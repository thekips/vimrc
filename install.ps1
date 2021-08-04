rm $HOME/.vimrc
cp $HOME/vim/vimrc $HOME/.vimrc
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force