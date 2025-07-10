for i = 1, 9 do
  vim.keymap.set({ 'i', 'n' }, '<C-' .. i .. '>', i .. 'gt', { unique })
end

vim.keymap.set({ 'i', 'n' }, '<C-0>', ':tablast<CR>')
