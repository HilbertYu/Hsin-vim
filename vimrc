" leader key
let mapleader=","


"file type detection
filetype on
filetype plugin on
filetype indent on

"---pathogen-- plugin
"runtime bundle/pathogen/autoload/pathogen.vim
"execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/vundle-list.vim
"""""""""""""""""""""""""""""""""""""""""""""""
filetype on
filetype plugin on
filetype indent on


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

"  let g:syntastic_always_populate_loc_list = 1
"  let g:syntastic_auto_loc_list = 1
"  let g:syntastic_check_on_open = 1
"  let g:syntastic_check_on_wq = 1



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
cnoreabbrev Agc Ag! <C-R><C-W> -G="*.[ch]" <CR>


"snipmate custom
set runtimepath+=~/.vim/snipmate-snippets-custom/

highlight Visual cterm=NONE ctermbg=Blue ctermfg=Cyan guibg=Grey41
nmap <F12> :w<CR>:make!<CR>:cw<CR>
"nmap <F12> :w<CR>:AsyncRun make<CR>:botright copen 8<CR>


"let g:ycm_path_to_python_interpreter = '/Users/fresh/anaconda/bin/python'

inoremap jk <ESC>
vmap <F7> !indent <CR>

"let g:syntastic_c_check_header = 0
let g:syntastic_c_remove_include_errors = 1



"YouCompleteMe
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
"let g:ycm_min_num_of_chars_for_completion=2
"
"

"CTRLP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.a,*/CVS/*
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
