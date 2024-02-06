-- bootstrap lazy.nvim, LazyVim and your plugins
--

require('config.lazy')

--.setup("plugins", {

vim.g.maplocalleader = ','
P = function(v)
  print(vim.inspect(v))
  return v
end
require('luasnip.loaders.from_snipmate').lazy_load({ paths = { '~/.config/nvim/snippets/snipmate' } })

ASGlobToggle = function()
  local as = require('autosave')
  local actions = require('autosave.actions')
  actions.global_toggle()
  local k = ''
  if as.enabled then
    k = '🟥'
  end
  vim.notify(k .. '  Global(!) autosave is ' .. tostring(as.enabled))
end
