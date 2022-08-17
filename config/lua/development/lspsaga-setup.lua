require 'lspsaga'.setup {
	code_action_keys = {
		quit = "q",
		exec = "<CR>",
	},
	rename_action_keys = {
		quit = "<C-c>",
		exec = "<CR>",
	}
}

local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

map("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", opts)
map("n", "<space>rn", "<cmd>Lspsaga rename<cr>", opts)
map("n", "gs", "<cmd>Lspsaga signature_help<cr>", opts)
map("n", "<space>ca", "<cmd>Lspsaga code_action<cr>", opts)
map("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", opts)
map("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
map("n", "gp", "<cmd>Lspsaga preview_definition<cr>", opts)
map("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
map("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
map("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})

-- Lsp Keymaps
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<leader>fo', '<cmd>lua vim.lsp.buf.format({async=true})<CR>', opts)
