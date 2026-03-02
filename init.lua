-- bootstrap lazy.nvim, LazyVim and your plugins
---@diagnostic disable: undefined-global
require("config.lazy")
vim.cmd("colorscheme custom")
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250"
vim.keymap.set("i", "<S-Tab>", "<C-d>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<D-j>", "gj")
vim.keymap.set("n", "<D-k>", "gk")
vim.opt.relativenumber = false
vim.opt.number = true
vim.keymap.set({ "n", "v" }, "0", "$")
vim.keymap.set({ "n", "v" }, "1", "0")
vim.api.nvim_create_autocmd("BufEnter", {
  once = true,
  callback = function()
    vim.api.nvim_exec_autocmds("User", { pattern = "VeryLazy" })
  end,
})
