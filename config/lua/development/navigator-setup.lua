-- Navigator.lua setup
local nvim_lsp = require 'lspconfig'
require'navigator'.setup{
  keymaps = {
             {key = "<leader>gr", func = "require('navigator.reference').async_ref()"},
             {key = "<leader>K", func = "signature_help()"},
             {key = "gd", func = "require('navigator.definition').definition()"}
  },
  icons = {
    icons = true,
    code_action_icon = ' ',
    code_lens_action_icon = ' ',
    diagnostic_head = '',
    diagnostic_err = '',
    diagnostic_warn = '',
    diagnostic_info = [[]],
    diagnostic_hint = [[]],

    diagnostic_head_severity_1 = '',
    diagnostic_head_severity_2 = '',
    diagnostic_head_severity_3 = '',
    diagnostic_head_description = '',
    diagnostic_virtual_text = '',
    diagnostic_file = '🚑',

    match_kinds = {
      var = ' ',
      method = 'ƒ ',
      ['function'] = ' ',
      parameter = '  ',
      associated = 'ﳤ',
      namespace = '',
      type = ' ',
      field = '🏈',
    }
  }
	--[[ ,
  lsp = {
    code_action = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
    code_lens_action = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
    diagnostic_virtual_text = true,
    denols = {},
    graphql = {},
    jdtls = {
      filetypes = {},
      command = {'jdtls'}
      }
    } ]]
}
