if (Test-Path $HOME/_vimrc) {
    Remove-Item $HOME/_vimrc -Force
}

cp $HOME/vim/vimrc $HOME/_vimrc
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

if (Test-Path $HOME/vim) {
    Remove-Item $HOME/vim -Recurse -Force
}
