vim.lsp.enable('pyright')
require("config.lazy")

vim.keymap.set({ "n", "c" }, "<C-c>", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
