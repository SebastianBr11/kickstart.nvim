-- As recommended by nvim-lspconfig:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#denols
-- This will appropiately highlight codefences returned from denols
vim.g.markdown_fenced_languages = {
  'ts=typescript',
}

vim.o.tabclose = 'uselast'

vim.o.shell = 'fish'
