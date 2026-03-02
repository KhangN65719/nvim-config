-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---@diagnostic disable: undefined-global
vim.keymap.set({ "n", "v" }, "<D-'>", "$", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<D-;>", "^", { noremap = true, silent = true })
vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Unindent line" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })
vim.keymap.set({ "n", "v" }, "<S-j>", "}", { desc = "Jump down paragraph" })
vim.keymap.set({ "n", "v" }, "<S-k>", "{", { noremap = true, silent = true })
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    pcall(vim.keymap.del, "n", "K", { buffer = args.buf })

    vim.keymap.set({ "n", "v" }, "<S-k>", "{", {
      buffer = args.buf,
      noremap = true,
      silent = true,
    })
  end,
})
