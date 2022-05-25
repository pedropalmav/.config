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

# Pop_os!
Si se quiere hacer un dualboot entre Pop_os! con Windows es necesario trabajar con systemd-boot, el cual trae por defecto Pop_os! (No trabajar con grub, ya que es más difícil con este os). Para ello hay que agregar el efi de Windows a systemd-boot de la siguiente manera. 

En primer lugar, hay que buscar la partición con a EFI de Windows con:
```console
lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT
```
Luego se procede a crear un directorio donde montar la partición EFI de Windows
```console
sudo mkdir /mnt/win-efi
sudo mount /dev/<nombre_particion> /mnt/win-efi
```
Después, se copian los contenidos del EFI de Windows al EFI de Pop_os
```console
sudo cp -r /mnt/win-efi/EFI/Microsoft /boot/efi/EFI
```

Finalmente, se agrega tiempo para que se pueda elegir que partición se quiere bootear modificando el archivo ```/boot/efi/loader/loader.conf``` y agregando una línea que diga timeout 10.

## Transparencia
Para que las ventanas de GNOME se vean transparentes es recomendable utilizar [mutter-rounded](https://github.com/yilozt/mutter-rounded-setting) para realizarlo.

## Errores Dual boot con Windows
Algunas veces al reiniciar desde windows a pop_os suele suceder que para los dos sistemas se desconfigura la zona horaria, por lo que para solucionarlo se debe ejecutar el siguiente comando desde la terminal de pop_os:
```console
timedatectl set-local-rtc 1 --adjust-system-clock
```
Otro error común es que reiniciar desde windows a pop_os produce de que no se puedan utilizar los altavoces intgrados, debido al uso compartido de la tarjeta de audio realtek, por lo tanto, es recomendable apagar desde windows y cambiarse a pop_os y no reiniciar en windows para entrar en pop_os.
