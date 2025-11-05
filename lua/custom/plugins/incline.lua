return {
  {
    'b0o/incline.nvim',
    opts = {
      ignore = {
        unlisted_buffers = true,
      },
      window = {
        padding = 0,
        margin = { horizontal = 0 },
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
        if filename == '' then
          filename = '[No Name]'
        end
        local ft_icon, ft_color = require('nvim-web-devicons').get_icon_color(filename)
        local modified = vim.bo[props.buf].modified
        return {
          ft_icon and { ' ', ft_icon, ' ', guifg = ft_color, guibg = '#0C0E14' } or '',
          ' ',
          { filename, gui = modified and 'bold,italic' or 'bold' },
          ' ',
          guibg = '#0C0E14',
        }
      end,
    },
    event = 'VeryLazy',
  },
}
