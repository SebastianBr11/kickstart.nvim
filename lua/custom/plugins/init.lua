-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'xiyaowong/transparent.nvim',
  },
  {
    'sphamba/smear-cursor.nvim',
    -- Options for faster smear from the Github Page (https://github.com/sphamba/smear-cursor.nvim)
    opts = { -- Default  Range
      stiffness = 0.8, -- 0.6      [0, 1]
      trailing_stiffness = 0.5, -- 0.4      [0, 1]
      stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      damping = 0.8, -- 0.65     [0, 1]
      damping_insert_mode = 0.8, -- 0.7      [0, 1]
      distance_stop_animating = 0.5, -- 0.1      > 0
    },
  },
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      vim.opt.termguicolors = true

      require('nvim-highlight-colors').setup {}
    end,
  },
  {
    'mvllow/modes.nvim',
    opts = {},
  },
}
