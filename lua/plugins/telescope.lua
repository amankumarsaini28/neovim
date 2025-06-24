--telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      cwd = vim.loop.cwd(),
    },
    pickers = {
      find_files = {
        cwd = vim.loop.cwd(),
      },
      live_grep = {
        cwd = vim.loop.cwd(),
      },
    },
  },
}
