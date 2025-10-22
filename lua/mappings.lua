require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("v", "<", "<gv")
map("v", ">", ">gv")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Terminal window navigation (for claude-code.nvim)
map("t", "<C-h>", "<C-\\><C-n><C-w>h")
map("t", "<C-j>", "<C-\\><C-n><C-w>j")
map("t", "<C-k>", "<C-\\><C-n><C-w>k")
map("t", "<C-l>", "<C-\\><C-n><C-w>l")

-- Claude Code mappings
map("n", "<leader>cc", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude Code" })
map("n", "<C-\\>", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude Code" })

-- Markdown rendering
map("n", "<leader>mr", "<cmd>RenderMarkdown toggle<cr>", { desc = "Toggle Markdown Rendering" })
map("n", "<leader>me", "<cmd>RenderMarkdown expand<cr>", { desc = "Expand Markdown Headings" })
map("n", "<leader>mc", "<cmd>RenderMarkdown contract<cr>", { desc = "Contract Markdown Headings" })
