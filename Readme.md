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
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
--enable-python3interp=yes \
--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64_linux-gnu \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-cscope \
--prefix=/usr


