--telescope.lua
return {
  -- Change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        cwd = vim.loop.cwd(),
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        pickers = {
          find_files = {
            cwd = vim.loop.cwd(),
          },
          live_grep = {
            cwd = vim.loop.cwd(),
          },
        },
      },
    },
  },
}
