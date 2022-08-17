
"=====================
" Vimwiki + Zettelkasten Settings
"=====================

let g:vimwiki_ext2syntax = {'.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{
			\ 'path': '~/zettel',
			\ 'syntax':'markdown',
			\ 'ext': '.md'},
			\ {'path': '~/vimwiki',
			\ 'syntax':'markdown',
			\ 'ext': '.md',
			\ 'path_html':'~/vimwiki/html/',
			\ 'custom_wiki2html': 'vimwiki_markdown',
			\ 'auto_tags':1,
			\ 'auto_toc':1}, ]
let g:vimwiki_use_mouse = 1
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_auto_chdir = 1
let g:vimwiki_global_ext = 0
let g:vimwiki_use_calendar = 1

let g:nv_search_paths = ['~/zettel']
let g:zettel_options = [{"front_matter" : [["alias",""],["tags", ""], ["citation", ""]]}]
let g:zettel_fzf_command = "rg --column --line-number --ignore-case --no-heading --color=always "

let g:calendar_options = 'nornu'

" nnoremap <leader>vs :VimwikiVSplitLink<cr>
" nnoremap <leader>vt :VimwikiTabnewLink<cr>

nnoremap <leader>zn :ZettelNew<space>
nnoremap <leader>bl :ZettelBackLinks<cr>
