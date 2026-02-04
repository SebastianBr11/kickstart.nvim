return {
  {
    'serhez/teide.nvim',
    lazy = false,
    priority = 1000,
    opts = { transparent = true },
    -- init = function() vim.cmd.colorscheme 'teide' end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      transparent = true,
      comments = {
        italic = false,
      },
    },
  },
  {
    'oskarnurm/koda.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        comments = {
          fg = '#dfdf8e',
        },
      },
    },
    -- init = function() vim.cmd.colorscheme 'koda' end,
  },
  {
    'yonatan-perel/lake-dweller.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    -- init = function() vim.cmd.colorscheme 'lake-dweller' end,
  },
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
