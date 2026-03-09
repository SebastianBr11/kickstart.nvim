return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter-intro`
    config = function()
      local filetypes = {
        'angular',
        'astro',
        'bash',
        'c',
        'css',
        'diff',
        'dockerfile',
        'editorconfig',
        'fish',
        'git_config',
        'git_rebase',
        'gitcommit',
        'gitignore',
        'go',
        'html',
        'java',
        'javascript',
        'json',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'rust',
        'scss',
        'sql',
        'ssh_config',
        'toml',
        'tsx',
        'typescript',
        'typst',
        'vim',
        'vimdoc',
        'vue',
        'xml',
        'yaml',
      }
      require('nvim-treesitter').install(filetypes)

      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          local buf, filetype = args.buf, args.match

          -- you need some mechanism to avoid running on buffers that do not
          -- correspond to a language (like oil.nvim buffers), this implementation
          -- checks if a parser exists for the current language
          local language = vim.treesitter.language.get_lang(filetype) or filetype
          if not vim.treesitter.language.add(language) then
            return
          end

          -- replicate `fold = { enable = true }`
          -- vim.wo.foldmethod = 'expr'
          -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

          -- replicate `highlight = { enable = true }`
          vim.treesitter.start(buf, language)

          -- replicate `indent = { enable = true }`
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
    -- Old options I'm keeping in case I ever code in Ruby
    -- opts = {
    --   highlight = {
    --     enable = true,
    --     -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
    --     --  If you are experiencing weird indenting issues, add the language to
    --     --  the list of additional_vim_regex_highlighting and disabled languages for indent.
    --     additional_vim_regex_highlighting = { 'ruby' },
    --   },
    --   indent = { enable = true, disable = { 'ruby' } },
    -- },
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {},
  },
  {
    'andersevenrud/nvim_context_vt',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
  },
}
