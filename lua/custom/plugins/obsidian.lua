return {
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',

      -- Optional dependencies
      'hrsh7th/nvim-cmp',
      'nvim-telescope/telescope.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('obsidian').setup {
        workspaces = {
          {
            name = 'Persönlich',
            path = '~/SynologyDrive/Obsidian/Persönlich',
          },
          {
            name = 'Schule',
            path = '~/SynologyDrive/Obsidian/Schule',
          },
        },
      }
      -- Some syntax features require this to be set
      -- This issue offers more details: https://github.com/epwalsh/obsidian.nvim/issues/286
      vim.opt_local.conceallevel = 2
    end,
  },
}
