## Install ##

1. mkdir YourVimDir
2. cd YourVimDir
3. git clone https://github.com/HilbertYu/Hsin-vim
4. ln -s YourVimDir ~/.vim
5. ln -s ~/.vim/vimrc ~/.vimrc
6. cd Hsin-vim
7. bash ./install.sh


## Build vim ##
1. git clone https://github.com/vim/vim.git

2. ./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-pythoninterp=yes \
--enable-python3interp=yes \
--with-python3-config-dir=*ref1* \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-cscope \
--prefix=/usr



## YCM ##
1. [Build vim]
2. sudo apt install vim-youcompleteme
3. install in vundle/YouCompleteMe/install.py

#### troubleshoot ####
```
```

### Ref ###
1.  use `python3-config --configdir` to get the path
