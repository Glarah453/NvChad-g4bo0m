require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- ====================================================================
-- AGREGA ESTO AQUÍ (AL FINAL DEL ARCHIVO)
-- ====================================================================
vim.filetype.add({
  extension = {
    html = "html", -- Forzar que sea HTML puro de toda la vida
  },
})


-- vim.filetype.add({
--   extension = {
--     html = function(path, bufnr)
--       -- Forzar el tipo de archivo combinado nativo que respeta HTML y JS
--       -- return "html", "htmldjango"
--       return "html", "htmldjango"
--     end,
--   },
-- })
