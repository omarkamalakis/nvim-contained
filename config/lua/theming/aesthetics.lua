-- AESTHETICS
-- Lualine
-- Pick between the preset themes or a custom theme from below

require'lualine'.setup {
        options = {
                theme = 'tokyonight'
        }
}
-- require("theming/bubble-lualine")
-- require('theming/evil-lualine')

require'bufferline'.setup{
		options = {
        view = "multiwindow",
        numbers = "ordinal",
        modified_icon = '●',
        tab_size = 18,
        diagnostics = "nvim_diagnostics",
        separator_style = {'|', ''}
    }
}

local map = function(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<Leader>1', '<cmd>BufferLineGoToBuffer 1<CR>')
map('n', '<Leader>2', '<cmd>BufferLineGoToBuffer 2<CR>')
map('n', '<Leader>3', '<cmd>BufferLineGoToBuffer 3<CR>')
map('n', '<Leader>4', '<cmd>BufferLineGoToBuffer 4<CR>')
map('n', '<Leader>5', '<cmd>BufferLineGoToBuffer 5<CR>')
map('n', '<Leader>6', '<cmd>BufferLineGoToBuffer 6<CR>')
map('n', '<Leader>7', '<cmd>BufferLineGoToBuffer 7<CR>')
map('n', '<Leader>8', '<cmd>BufferLineGoToBuffer 8<CR>')
map('n', '<Leader>9', '<cmd>BufferLineGoToBuffer 9<CR>')

