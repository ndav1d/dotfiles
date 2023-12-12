local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'treesitter' },
    { name = 'spell' },
  },
})
