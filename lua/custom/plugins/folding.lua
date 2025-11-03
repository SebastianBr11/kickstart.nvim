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
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
  },
}
