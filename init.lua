vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)


-- Forzar colores personalizados para los delimitadores de Jinja
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "html",
--   callback = function()
--     -- Intentar pintar delimitadores de Django/Jinja en Rojo
--     vim.api.nvim_set_hl(0, "@keyword.operator.django", { fg = "#FF0000" })
--     vim.api.nvim_set_hl(0, "@tag.delimiter.htmldjango", { fg = "#FF0000" })
--
--     -- Intentar pintar las llaves de variables en Verde
--     vim.api.nvim_set_hl(0, "@variable.parameter.django", { fg = "#00FF00" })
--   end,
-- })
