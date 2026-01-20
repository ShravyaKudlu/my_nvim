return {
  "yetone/avante.nvim",
  opts = {
    provider = "gemini",

    providers = {
      gemini = {
        api_key_name = "GEMINI_API_KEY",
        model = "gemini-2.5-flash",
      },

      copilot = {},
    },
  },
}
