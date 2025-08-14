return {
  {
    'obsidian-nvim/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
      -- refer to `:h file-pattern` for more examples
      'BufReadPre '
        .. vim.fn.expand '~'
        .. '/SynologyDrive/Obsidian/Persönlich',
      'BufNewFile ' .. vim.fn.expand '~' .. '/SynologyDrive/Obsidian/Persönlich',
      'BufReadPre ' .. vim.fn.expand '~' .. '/SynologyDrive/Obsidian/Schule',
      'BufNewFile ' .. vim.fn.expand '~' .. '/SynologyDrive/Obsidian/Schule',
    },
    opts = {
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
    },
  },
}
