# Configuración
Para agregar cosas al path de fish es necesario entrar a ```config.fish``` y agregar las cosas que se necesiten.

# NVM
Para instalar NVM a fish no se hace con apt, ya que este solo lo instala para bash, por lo tanto es necesario instalar una versión de NVM para fish desde el siguiente [link](https://github.com/jorgebucaran/nvm.fish)
Para instalar la última versión estable de node se utiliza el siguiente comando
```bash
nvm install lts
```
Finalmente es muy importante configurar la variable global de la varsion que se quiere utilizar de node cada vez que usemos una terminal, por lo tanto se ejecuta el siguiente comando
```bash
set --universal nvm_default_version <version>
```
# Comandos útiles

* ```builtin --names```: Lista todos los comandos que vienen integrados en fish.
* ```alt + s```: Permite agregar sudo al último comando ejecutado.
* ```prevd```: Permite reubicarte en el directorio anterior al que estas ahora.
* ```nextd```: Permite reubicarte en el directorio posterior al que estas ahora (esto en caso de haber navegado hacia atrás en el historial).
