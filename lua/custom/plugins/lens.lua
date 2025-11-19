---@module 'lazy'
---@type LazySpec
return {
  {
    'oribarilan/lensline.nvim',
    branch = 'release/2.x', -- or: branch = 'release/2.x' for latest non-breaking updates
    event = 'LspAttach',
    opts = {
      profiles = {
        {
          name = 'minimal',
          style = {
            placement = 'inline',
            prefix = '',
            render = 'focused',
          },
        },
      },
    },
  },
}
