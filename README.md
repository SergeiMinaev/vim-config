Used plugin manager: vim-plug ( https://github.com/junegunn/vim-plug )

## Fresh install:
1) Remove or backup existing ~/.vim dir and ~/.vimrc file.
2) Install new vim config with these three commands:
```
git clone https://github.com/SergeiMinaev/vim-config.git ~/.vim
cd ~/.vim
mv .vimrc ~/
```
3) Install vim plugin manager: ~/.vim/update-vim-plug.sh
4) Run vim and type :PlugInstall to install plugins.
Done


## Updating:

To update vim-config run:
```
cd ~/.vim
git pull
mv .vimrc ~/
```
To update plugin manager run ~/.vim/update-vim-plug.sh
To update installed plugins run vim and type :PlugUpdate


## Details:

Installed plugins are stored in ~/.vim/plugged/
