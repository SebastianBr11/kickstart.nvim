return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    init = function() vim.cmd.colorscheme 'kanagawa' end,
  },
}
