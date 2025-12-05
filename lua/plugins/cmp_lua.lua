return {
  'hrsh7th/nvim-cmp',
  opts = function(_, opts)
    local cmp = require 'cmp'

    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
      { name = 'nvim_lua' }, -- completion for Neovim Lua API
    }))

    return opts
  end,
}
