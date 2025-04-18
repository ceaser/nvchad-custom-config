vim.opt.colorcolumn = "80"
-- vim.g.copilot_assume_mapped = true

local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
})
