-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function quickfix()
  vim.lsp.buf.code_action({
    filter = function(a)
      return a.isPreferred
    end,
    apply = true,
  })
end

vim.keymap.set("n", "<leader>qf", quickfix, { noremap = true, silent = true, desc = "Quick fix, suggested by lsp" })

-- Hover
vim.keymap.set("n", "<leader>H", vim.lsp.buf.hover, { desc = "Brief info about object" })

-- vim.keymap.set("n", "<leader>d", "<cmd>r!gendate<cr>", { desc = "Insert date" })
-- vim.keymap.set("n", "<leader>h1", "<cmd>r!gendate h 1<cr>", { desc = "Insert date h1" })
-- vim.keymap.set("n", "<leader>h2", "<cmd>r!gendate h 2<cr>", { desc = "Insert date h2" })

-- lsp
vim.keymap.set("n", "<leader>Ss", "<cmd>LspStop<CR>", { desc = "LspStop" })
vim.keymap.set("n", "<leader>St", "<cmd>LspStart<CR>", { desc = "LspStart" })

-- surrounding words
vim.keymap.set("n", "<leader>wsq", 'ciw""<Esc>P', { desc = "Word Surround Quotes" })

vim.keymap.set("n", "<leader>fs", "<cmd>Telescope symbols<cr>", { desc = "Find Symbols" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- and these are for searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
