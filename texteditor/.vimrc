syntax on
filetype plugin on
set number
set ru
" Look also in /usr/share/vim/vim*/colors
" colorscheme custom
" autocmd VimEnter * source /usr/share/vim/vim81/colors/custom.vim
" Set mouse support
set mouse=a

set expandtab ts=2 sw=2

set nofoldenable
set foldlevel=20
set foldmethod=syntax

set tags=tags
set cscoperelative

" Pathogen settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Add spell check
" set spell spelllang=en_us
" Open NERDTree automatically when opening vim
" autocmd VimEnter * NERDTree

" Swap file directory
:set directory^=$HOME/.vim/swapfiles/

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

" Convert file to hex
command! Hex call ConvertToHex()
function ConvertToHex()
  silent! :e ++bin
  silent! :%!xxd
endfunction

command! GenerateTags call Cmd()
function! Cmd()
	silent! execute '! $HOME/.vim/plugin/gen_tags.sh &> /dev/null &'
	redraw!
endfunction

let g:syntastic_cpp_checkers=['cpplint']
let g:syntastic_cpp_cpplint_args = '--headers=hpp'
let g:syntastic_enable_cpp_checker = 1
let g:syntastic_cpp_check_header = 1

let g:syntastic_rust_checkers=['cargo']

let g:syntastic_check_on_open = 1
let g:tagbar_left = 1

" Use G=gg to apply formatting
autocmd Filetype c,cpp,proto setlocal equalprg=clang-format
