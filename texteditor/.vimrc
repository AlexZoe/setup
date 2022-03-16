syntax on
"filetype plugin indent on
set number
" Display row/column in status bar
set ru
" Look also in /usr/share/vim/vim*/colors
colorscheme custom
autocmd VimEnter * source /usr/share/vim/vim81/colors/custom.vim
" Set mouse support
set mouse=a

set tags=tags
set cscoperelative

command! GenerateTags call Cmd()

function! Cmd()
	silent! execute '! $HOME/.vim/plugin/gen_tags.sh &> /dev/null &'
	redraw!
endfunction

" Pathogen settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Add spell check
" set spell spelllang=en_us
" Open NERDTree automatically when opening vim
" autocmd VimEnter * NERDTree

" Swap file directory
:set directory^=~$HOME/.vim/swapfiles/

" Show trailing whitespace and mark red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

" Auto completion for files
" Search down into subfolders and provide tab-completion
set path+=**
" Display all matching files when tab complete
set wildmenu
" Do not show object files, etc when tab completing
set wildignore=*.o,tags,*~
" Vim airline settings
" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"------------ Keybindings
" esc bindings
inoremap kj <esc>
cnoremap kj <C-C>

" Multi cursor
"  * start:          `<C-n>` start multicursor and add a _virtual cursor + selection_ on the match
"    * next:         `<C-n>` add a new _virtual cursor + selection_ on the next match
"    * skip:         `<C-x>` skip the next match
"    * prev:         `<C-p>` remove current _virtual cursor + selection_ and go back on previous match
"  * select all:     `<A-n>` start muticursor and directly select all matches
