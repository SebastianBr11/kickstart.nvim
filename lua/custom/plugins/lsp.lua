return {
  {
    'zeioth/garbage-day.nvim',
    event = 'VeryLazy',
    version = 'v1.3.1',
    opts = {},
  },
  {
    'esmuellert/nvim-eslint',
    ---@type vim.lsp.Config
    opts = {
      settings = {
        format = true,
      },
      -- Immediately stop eslint if there's no eslint config file.
      -- Otherwise both biome and eslint attach even though a project only uses biome.
      -- Some parts were taken from nvim-lspconfig.
      on_attach = function(client, bufnr)
        local eslint_config_files = {
          '.eslintrc',
          '.eslintrc.js',
          '.eslintrc.cjs',
          '.eslintrc.yaml',
          '.eslintrc.yml',
          '.eslintrc.json',
          'eslint.config.js',
          'eslint.config.mjs',
          'eslint.config.cjs',
          'eslint.config.ts',
          'eslint.config.mts',
          'eslint.config.cts',
        }

        local root_markers = { 'package-lock.json', 'yarn.lock', 'pnpm-lock.yaml', 'bun.lockb', 'bun.lock' }
        -- Give the root markers equal priority by wrapping them in a table
        root_markers = vim.fn.has 'nvim-0.11.3' == 1 and { root_markers, { '.git' } } or vim.list_extend(root_markers, { '.git' })
        -- We fallback to the current working directory if no project root is found
        local project_root = vim.fs.root(bufnr, root_markers) or vim.fn.getcwd()

        local filename = vim.api.nvim_buf_get_name(bufnr)
        local is_buffer_using_eslint = vim.fs.find(eslint_config_files, {
          path = filename,
          type = 'file',
          limit = 1,
          upward = true,
          stop = vim.fs.dirname(project_root),
        })[1]

        if not is_buffer_using_eslint then
          vim.lsp.stop_client(client.id)
          return
        end

        vim.api.nvim_buf_create_user_command(
          bufnr,
          'LspEslintFixAll',
          function()
            client:request_sync('workspace/executeCommand', {
              command = 'eslint.applyAllFixes',
              arguments = {
                {
                  uri = vim.uri_from_bufnr(bufnr),
                  version = vim.lsp.util.buf_versions[bufnr],
                },
              },
            }, nil, bufnr)
          end,
          {}
        )

        vim.api.nvim_create_autocmd('BufWritePre', {
          buffer = bufnr,
          callback = function() vim.cmd 'LspEslintFixAll' end,
          desc = 'Run ESLint fix on save only if enabled',
        })
      end,
      filetypes = {
        'javascript',
        'javascriptreact',
        'javascript.jsx',
        'typescript',
        'typescriptreact',
        'typescript.tsx',
        'vue',
        'svelte',
        'astro',
        'html',
        'htmlangular',
      },
    },
  },
  {
    'chrisgrieser/nvim-lsp-endhints',
    event = 'LspAttach',
    opts = {}, -- required, even if empty
  },
}
