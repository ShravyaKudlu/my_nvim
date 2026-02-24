return {
  {
    "ibhagwan/fzf-lua",
    optional = true,
    opts = function()
      local function git_root()
        local out = vim.fn.systemlist({ "git", "rev-parse", "--show-toplevel" })
        local root = out[1]
        if root and root ~= "" and not root:match("^fatal:") then
          return root
        end
      end

      local function reset_files_opts(o)
        o.cmd = nil
        o.rg_opts = nil
        o.fd_opts = nil
        o.find_opts = nil
        o.cwd = nil
      end

      local function hidden_only_cmd()
        if vim.fn.executable("fd") == 1 then
          return [[fd --hidden --type f --type l --exclude .git --regex '(^|/)\.']]
        end
        if vim.fn.executable("rg") == 1 then
          return [[rg --files --hidden --glob '!.git' --glob '**/.**']]
        end
        return [[find . -type f -path '*/.*' -not -path '*/.git/*']]
      end

      local function toggle_hidden_only(_, opts)
        local o = vim.tbl_deep_extend("keep", { resume = true }, opts.__call_opts or {})
        if opts.__hidden_only then
          o.__hidden_only = false
          reset_files_opts(o)
          o.hidden = false
          o.no_ignore = false
        else
          o.__hidden_only = true
          o.__ignored_only = false
          o.hidden = true
          o.no_ignore = false
          o.cmd = hidden_only_cmd()
        end
        opts.__call_fn(o)
      end

      local function toggle_ignored_only(_, opts)
        local o = vim.tbl_deep_extend("keep", { resume = true }, opts.__call_opts or {})
        if opts.__ignored_only then
          o.__ignored_only = false
          reset_files_opts(o)
          o.hidden = false
          o.no_ignore = false
          opts.__call_fn(o)
          return
        end

        local root = git_root()
        if not root then
          vim.notify("FzfLua ignored-only needs a git repo; showing ignored too", vim.log.levels.WARN)
          o.no_ignore = not opts.no_ignore
          opts.__call_fn(o)
          return
        end

        o.__ignored_only = true
        o.__hidden_only = false
        o.hidden = true
        o.no_ignore = true
        o.cwd = root
        o.cmd = "git ls-files -ci --exclude-standard"
        opts.__call_fn(o)
      end

      return {
        files = {
          hidden = false,
          no_ignore = false,
          actions = {
            ["alt-h"] = { fn = toggle_hidden_only, reuse = true, header = false },
            ["alt-i"] = { fn = toggle_ignored_only, reuse = true, header = false },
          },
        },
      }
    end,
    keys = {
      { "<leader>gl", false },
      { "<leader>gd", false },
      { "<leader>gS", false },
      { "<leader>gs", false },
    },
  },
}
