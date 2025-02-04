-- AUTOCOMPLETION
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-CR'] = cmp.mapping.abort(),
    ['A-Up'] = cmp.mapping.scroll_docs(-4), -- TODO: Fix :p
    ['A-Down'] = cmp.mapping.scroll_docs(4),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },  -- LSP source
    { name = 'luasnip' },   -- Snippet source
    { name = 'buffer' },    -- Buffer source (for text within the current file)
    { name = 'path' },      -- Filesystem path source (useful for `:edit` and similar commands)
  }),

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
