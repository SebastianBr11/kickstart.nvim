return {
  {
    'chrisgrieser/nvim-origami',
    event = 'VeryLazy',
    opts = {
      autoFold = {
        enabled = true,
        kinds = { 'imports' }, ---@type lsp.FoldingRangeKind[]
      },
    },

    -- recommended: disable vim's auto-folding
    init = function()
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
    end,
  },
}
