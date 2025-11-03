return {
  {
    'chrisgrieser/nvim-origami',
    event = 'VeryLazy',
    opts = {
      autoFold = {
        enabled = false,
        kinds = { 'imports', 'comment' }, ---@type lsp.FoldingRangeKind[]
      },
    },

    -- recommended: disable vim's auto-folding
    init = function()
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
    end,
  },
}
