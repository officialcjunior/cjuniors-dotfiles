
" netrw directory browser configs " 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END 

if bufwinnr(1)
	map + <C-W>+
	map - <C-W>-
endif

set tabstop=7
set sw=7
set nu
syntax on

"colorscheme desert
"set mouse=a



" The funky status bar code. src= https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
set laststatus=2            " set the bottom status bar

function! ModifiedColor()
	if &mod == 1
		hi statusline guibg=White ctermfg=8 guifg=OrangeRed4 ctermbg=15
	else
		hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15
	endif
endfunction

au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
" default the statusline when entering Vim
hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]      
"modified flag

set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" [200~https://github.com/romainl/idiomatic-vimrc
" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
" of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
" around and `<CR>` to validate.

 set autochdir
 set tags=tags;

colorscheme cyberpunk-neon
