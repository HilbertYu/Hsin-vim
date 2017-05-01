"---syntax
syntax enable
syntax on

"---color style
set t_Co=256
set background=dark
colorscheme molokai
" colorscheme gentooish
" colorscheme gentooish_chi
"colorscheme solarized


"---status bar
set nocompatible
set wildmenu
set laststatus=2
set ruler
set number
set cursorline
"set cursorcolumn
set hlsearch
set nowrap
set listchars=eol:¶,tab:┊-,extends:»,precedes:«,trail:•
set nolist

"---indent
set fileencodings=utf-8,cp950,big5,sjis,euc-jp,gbk,euc-kr,utf-bom,iso-2022-jp,iso8859-1,ucs-bom
set termencoding=utf-8
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=indent
set foldmethod=syntax
set nofoldenable
set fileformats=unix,dos
set fileformat=unix
set backspace=2
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
