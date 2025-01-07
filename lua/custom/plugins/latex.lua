return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      -- vim.g.vimtex_view_method = 'zathura'

      -- NOTE: See https://github.com/lervag/vimtex/issues/2888 for more info about out_dir configuration
      vim.g.vimtex_compiler_latexmk = {
        out_dir = './out/',
      }
    end,
  },
}
