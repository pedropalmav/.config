# NeoVim 
En primer lugar, se debe descargar la aplicación desde el [repo](https://github.com/neovim/neovim/wiki/Installing-Neovim). Desde ahí hat que dirigirse al apartado de Debian para esta distro o Ubuntu.
En segundo lugar, se debe descargar [Vim-plug](https://github.com/junegunn/vim-plug) para que podamos descargar los plugins de vim.
En tercer lugar, debemos crear un link simbolico del archivo .vimrc en el directorio ~ (Home), para ello es necesario cambiar a aquel directorio y ejecutar el siguiente comando:
```console
ln -s .config/.vimrc .vimrc
```
En tercer lugar, hay que instalar los plugins de Vim, esto sea hace ejecutando :PlugInstall desde nvim una vez que se escriben todos los nuevos plugins y se cierra el archivo de .vimrc. En particular, el plugin vim-devicons necesita de que la terminal utilizada tenga como fuente principal una Nerd Font. En el caso de Windows se descarga la fuente, se extrae todo el .zip, se seleccionan todos los archivos y con click derecho se ejecuta instalar para todos los usuarios. Finalmente, se elige esta fuente desde la configuración de la terminal.

# Screenfetch
Para que aparezca el logo del OS e información del computador se instala neofetch. Para ubuntu es el siguiente comando
```console
sudo apt-get install neofetch
```
Luego para que se ejecute cada vez que abramos la terminal se agrega una nueva línea en .bashrc en el direcotrio ~ con el nombre del comando a ejecutar (neofetch)
