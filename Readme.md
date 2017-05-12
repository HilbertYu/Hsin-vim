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



## YCM ##
1. [Build vim]
2. sudo apt install vim-youcompleteme
3. install in vundle/YouCompleteMe/install.py

#### troubleshoot ####
```
importerror: dlopen(/usr/local/cellar/python/2.7.13/frameworks/python.framework/versions/2.7/lib/python2.7/lib-dynload/_io.so, 2): symbol not found: __pycodecinfo_getincrementaldecoder referenced
```

* find _io.so

```
sudo find / -name _io.so
```
* replace the older lib to the new one.

```
/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-dynload/_io.so /usr/local/Cellar/python/2.7.13/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-dynload/_io.so
```

