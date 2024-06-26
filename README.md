My minimalistic ~/.vim folder.

## Key points
1) Less useless deps;
2) No auto-complete;
3) No garland-like syntax highlight.

Homepage: https://github.com/SergeiMinaev/vim-config

Used plugin manager: vim-plug ( https://github.com/junegunn/vim-plug )

### Screenshots
#### Python
![Python](https://7ae36a0d-fce4-4083-ad3c-59d62d7eb69f.selstorage.ru/python-1.png "Python")

#### Rust
![Rust](https://7ae36a0d-fce4-4083-ad3c-59d62d7eb69f.selstorage.ru/rust-1.png "Rust")

#### JavaScript
![JavaScript](https://7ae36a0d-fce4-4083-ad3c-59d62d7eb69f.selstorage.ru/js-1.png "JavaScript")

## Fresh install
1) Remove or backup existing ~/.vim and ~/.vimrc.
2) Clone this vim config:
```
git clone https://github.com/SergeiMinaev/vim-config.git ~/.vim
```
3) Install vim plugin manager:
```
cd ~/.vim && ./update-vim-plug.sh
```
4) Run vim, ignore the error about the color scheme and type `:PlugInstall` to install the plugins.
5) Restart vim. Done.

*Note that path to vimrc is ~/.vim/vimrc and not ~/.vimrc .*

## Updating
#### Warning: your ~/.vim and ~/.vim/vimrc will be overwritten

To update vim-config run:
```
cd ~/.vim && git checkout . && git pull
```
or
```
~/.vim/update-vim-config.sh
```

To update plugin manager run ~/.vim/update-vim-plug.sh

To update installed plugins run vim and type :PlugUpdate


## Details:

Installed plugins are stored in ~/.vim/plugged/
