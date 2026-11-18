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

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function(args)
    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(args.buf))
    if ok and stats and stats.size > max_filesize then
      vim.b[args.buf].large_buf = true
      vim.cmd("syntax off")
      pcall(vim.treesitter.stop, args.buf)
    end
  end,
})


vim.opt.timeoutlen = 1500

-- vim.filetype.add({
--   extension = {
--     html = function(path, bufnr)
--       -- Forzar el tipo de archivo combinado nativo que respeta HTML y JS
--       -- return "html", "htmldjango"
--       return "html", "htmldjango"
--     end,
--   },
-- })
