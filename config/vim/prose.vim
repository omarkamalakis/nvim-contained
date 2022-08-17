"=====================
"Prose/Documents
"=====================
let g:pencil#wrapModeDefault = 'soft'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

" Open bibliography file in split
map <leader>bi :vsp<space>$BIB<CR>
map <leader>re :vsp<space>$REFER<CR>

" ZenMode plugin makes text more readable when writing prose:
lua require("zen-mode").setup { }
map <leader><leader>f :ZenMode<CR>

" Enable Goyo by default for mutt writting
" Goyo's width will be the line limit in mutt.
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo \| set bg=light

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>p :setlocal spell! spelllang=en_us<CR>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>C :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" Clear tex files on exit
autocmd VimLeave *.tex !texclear %

" FileTypes for opening
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Skeleton files (for MOM)
	if has("autocmd")
		augroup templates
			autocmd BufNewFile *.mom 0r ~/.skeleton/skeleton.mom
		augroup END
	endif

"MARKDOWN
autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

