-- Language Server Protocol Settings

-- LSP Installer
require("nvim-lsp-installer").setup {
	automatic_installation = true
}


-- Default LSPs
local lspconfig = require("lspconfig")
lspconfig.pyright.setup {}
lspconfig.sumneko_lua.setup {}
lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.bashls.setup {}
lspconfig.vimls.setup {}
lspconfig.jsonls.setup {}
lspconfig.yamlls.setup {}
lspconfig.cssmodules_ls.setup {}
lspconfig.cssls.setup {}

-- Java/Kotlin (JVM is "special")
require "lspconfig".kotlin_language_server.setup {}
require 'lspconfig'.jdtls.setup {
	cmd = { 'jdtls' },
	filetypes = { 'java' },
	root_dir = function(fname)
		return require 'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
	end
}

--[[ local config = {
	cmd = { 'jdtls' },
	root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradle.build', '.git', 'pom.xml' }),
	init_options = { bundles = {
		vim.fn.glob("/home/gokamalakis/Repos/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.35.0.jar")
	}
	},
} ]]

--[[ config['on_attach'] = function(client, bufnr)
  require'jdtls.setup'.add_commands()
  -- With `hotcodereplace = 'auto' the debug adapter will try to apply code changes
  -- you make during a debug session immediately.
  -- Remove the option if you do not want that.
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end ]]

-- require('jdtls').start_or_attach(config)

