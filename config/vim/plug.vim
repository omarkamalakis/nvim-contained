
"=====================
"VIM PLUG
"=====================
call plug#begin('~/.config/nvim/plugged')

"Movement Tools
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ggandor/lightspeed.nvim'
Plug 'kevinhwang91/nvim-hlslens'
" Plug 'mg979/vim-visual-multi'

"File Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vifm/vifm.vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-treesitter/nvim-treesitter'

"Task/Project Management + Knowledge Base
Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vim-zettel'
Plug 'reedes/vim-pencil'
Plug 'jbyuki/venn.nvim'

"Git tools
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'junegunn/gv.vim'
Plug 'lewis6991/gitsigns.nvim'

"IDE-like tools
Plug 'airblade/vim-rooter'
" Switch to neovim plugin
Plug 'tmsvg/pear-tree'
Plug 'mbbill/undotree'

Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'onsails/lspkind-nvim'

Plug 'nvim-treesitter/nvim-treesitter'
" May be deleted with coq
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'b3nj5m1n/kommentary'
Plug 'tami5/lspsaga.nvim'
" Plug 'simrat39/rust-tools.nvim'
Plug 'mfussenegger/nvim-jdtls'

"Productivity
Plug 'tpope/vim-obsession'
" Plug 'sudormrfbin/cheatsheet.nvim'

"Visual Tools
Plug 'smithbm2316/centerpad.nvim'
Plug 'liuchengxu/vista.vim'

Plug 'folke/which-key.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'luukvbaal/stabilize.nvim'

"A E S T H E T I C S
Plug 'marko-cerovac/material.nvim'
Plug 'Shatur/neovim-ayu'
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'sidebar-nvim/sidebar.nvim'
" Plug 'xiyaowong/nvim-transparent'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'tiagovla/tokyodark.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
