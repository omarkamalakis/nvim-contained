"=====================
"GENERAL SETTINGS
"=====================

let mapleader = " "
set mouse=a
set incsearch
set clipboard=unnamedplus
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set ttyfast
set fillchars+=diff:╱
set tabstop=4
set shiftwidth=4
"Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright
" Enable autocompletion:
set completeopt=menu,menuone,noselect
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Buffer Switching
map <leader>; :bnext<cr>
map <leader>: :bprev<cr>

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
vnoremap <C-c> "+y
map <C-p> "+P

" Search
nnoremap ? ?\v
cnoremap %s/ %sm/

" Center Search Results
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Replace all is aliased to S.
nnoremap R :%s//g<Left><Left>

" External Configs
source $HOME/.config/nvim/vim/plug.vim
source $HOME/.config/nvim/vim/wiki.vim
source $HOME/.config/nvim/vim/prose.vim

" let g:coq_settings = { 'auto_start': 'shut-up' }
luafile $HOME/.config/nvim/lua/main-interface.lua


"=====================
"THEMING
"=====================
set termguicolors
lua require 'colorizer'.setup(nil, { css = true; })

" Neovide Only
let g:neovide_cursor_trail_length=0.3
set guifont=JetBrainsMono-Regular,DejaVuSans:h10

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevelstart=20
set termguicolors

let g:tokyonight_style="night"
" let g:tokyonight_transparent = 1
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "DiffviewFiles", "qf", "vista", "terminal", "plug", "calendar", "sidebar", "leftpad", "rightpad"]

let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.0"
set background=dark
let g:material_style = "deep ocean"
colorscheme tokyonight

"=====================
"Quality of Life Keybinds:
"=====================

" Keymaps with which-key NOTE:: further which-key setup is needed

" lua require("which-key").setup {}

" Stabilize
lua require("stabilize").setup()

" LightSpeed Omni-mode
map s 	<Plug>Lightspeed_omni_s
map gs <Plug>Lightspeed_omni_gs

" Move lines/chunks up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Telescope
nnoremap <leader>sf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>sg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>sb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>sh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>sr <cmd>lua require('telescope.builtin').registers()<cr>
nnoremap <leader>sj <cmd>lua require('telescope.builtin').jumplist()<cr>
nnoremap <leader>st <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>sw <cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>
nnoremap <leader>ss <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>

"=====================
" Version Control
"=====================
" nnoremap <leader>gs :G<cr>
nnoremap <leader>gs :LazyGit<cr>
nnoremap <leader>gt :Gitsigns setqflist<cr>

" Undotree
nnoremap <F3> :UndotreeToggle<CR>

"=====================
" Development
"=====================
augroup lspsaga_filetypes
  autocmd!
  autocmd FileType LspsagaHover nnoremap <buffer><nowait><silent> <Esc> <cmd>close!<cr>
augroup END
let g:blamer_enabled = 1

nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xd <cmd>TodoTrouble<cr>
" NeoVim Embedded Terminal
function s:AddTerminalNavigation()

    echom &filetype
    if &filetype ==# ''
				tnoremap <leader><Esc> <C-\><C-n>
        tnoremap <Esc> <Esc>
        tnoremap <buffer> <silent> <c-h> <c-\><c-n>:TmuxNavigateLeft<cr>
        tnoremap <buffer> <silent> <c-j> <c-\><c-n>:TmuxNavigateDown<cr>
        tnoremap <buffer> <silent> <c-k> <c-\><c-n>:TmuxNavigateUp<cr>
        tnoremap <buffer> <silent> <c-l> <c-\><c-n>:TmuxNavigateRight<cr>
    endif

endfunction

augroup TerminalNavigation
    autocmd!
    autocmd TermEnter * call s:AddTerminalNavigation()
augroup END


" TMUX Navigation
	nnoremap <silent> <C-Left> :TmuxNavigateLeft<cr>
	nnoremap <silent> <C-Down> :TmuxNavigateDown<cr>
	nnoremap <silent> <C-Up>   :TmuxNavigateUp<cr>
	nnoremap <silent> <C-Right> :TmuxNavigateRight<cr>
	nnoremap <silent> <C-BS> :TmuxNavigatePrevious<cr>

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

"For Bash and System Configs

" Ansible Playbooks
	au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost ~/.bmdirs,~/.bmfiles !shortcuts

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" nvim-tree
nnoremap <C-n> :NvimTreeToggle<CR>

" You need this otherwise you cannot switch modified buffer
set hidden
" Vista
nnoremap <leader>v :Vista!!<CR>
let g:vista_executive_for = {
	\ 'go': 'nvim_lsp',
	\ 'rust': 'nvim_lsp',
	\ 'python': 'nvim_lsp',
	\ 'markdown': 'toc',
	\ 'vimwiki' : 'markdown',
	\ 'bash': 'nvim_lsp',
	\ 'javascript': 'nvim_lsp',
	\ 'html': 'nvim_lsp',
	\ 'css': 'nvim_lsp',
	\ 'kotlin': 'nvim_lsp',
	\ 'java': 'nvim_lsp',
	\ 'typescript': 'nvim_lsp',
	\ }
let g:vista_enable_markdown_extension=1
let g:vista_stay_on_open=0
