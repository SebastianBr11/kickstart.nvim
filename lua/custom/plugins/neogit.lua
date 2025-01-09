return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      -- 'ibhagwan/fzf-lua', -- optional
      -- 'echasnovski/mini.pick', -- optional
    },
    config = function()
      require('neogit').setup {}

      -- Keymap for opening Neogit
      vim.keymap.set('n', '<leader>gs', '<CMD>Neogit<CR>', { desc = 'Neo[G]it [S]etup' })
    end,
  },
}
