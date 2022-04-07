# NeoVim 
En primer lugar, se debe descargar la aplicación desde el [repo](https://github.com/neovim/neovim/wiki/Installing-Neovim). Desde ahí hat que dirigirse al apartado de Debian para esta distro o Ubuntu.
En segundo lugar, se debe descargar [Vim-plug](https://github.com/junegunn/vim-plug) para que podamos descargar los plugins de vim.
En tercer lugar, debemos crear un link simbolico del archivo .vimrc en el directorio ~ (Home), para ello es necesario cambiar a aquel directorio y ejecutar el siguiente comando:
```console
ln -s .config/.vimrc .vimrc
```
