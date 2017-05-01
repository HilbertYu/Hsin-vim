" leader key
let mapleader=","


"file type detection
filetype on
filetype plugin on
filetype indent on

"---pathogen-- plugin
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

"basic
source $HOME/.vim/hsinsetting/basic.vim


"---Powerline---
let g:Powerline_symbols = 'unicode'

"---CPP---
nmap <Leader>ch :A<CR>
nmap <Leader>sch :AS<CR>

"-
"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_start_level=2
"let g:indent_guides_start_size=1

" edit hex
nmap <silent> <C-H> :%!xxd<CR>
nmap <silent> <C-J> :%!xxd -r<CR>

"white space
highlight WhitespaceEOL ctermbg=cyan guibg=cyan
match WhitespaceEOL /\s\+$/
nmap <Leader>dw :%s/\s\+$//g<CR>

"pair
"nnoremap <Leader>pa %

"syntastic
"let g:syntastic_warning_symbol = '⚠'
let g:syntastic_warning_symbol = 'W'
let g:syntastic_error_symbol = '✗'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1

"nerdtree
source $HOME/.vim/hsinsetting/nerdtree.vim

"--tagbar
source $HOME/.vim/hsinsetting/tagbar.vim

"OmniCpp
source $HOME/.vim/hsinsetting/omnicppcomplete.vim
"
"let g:asyncrun_mode = 1
cnoreabbrev ctags_add  AsyncRun! ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
"cnoreabbrev Ack  AsyncRun! ack <cword><CR>:botright copen 8<CR>
cnoreabbrev Agc Ag! <C-R><C-W> ./*.c



highlight Visual cterm=NONE ctermbg=Blue ctermfg=Cyan guibg=Grey41
nmap <F12> :w<CR>:make!<CR>:cw<CR> 
"nmap <F12> :w<CR>:AsyncRun make<CR>:botright copen 8<CR>


"let g:ycm_path_to_python_interpreter = '/Users/fresh/anaconda/bin/python'

inoremap jk <ESC>
