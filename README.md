# **NvChad g4bo0m**

Antes de clonar el repositorio e instalar este editor personalizado de [Neovim](https://github.com/neovim/neovim/releases/tag/stable), **se requiere tener instalado** ciertos programas y paquetes para que NvChad funcione correctamente.

# 📋 **Requisitos de Instalación** 

## Linux/Unix.

### Instalar una Nerd Font compatible:

1. Descargar un  Nerd Font del siguiente [Link](https://www.nerdfonts.com/font-downloads)

2. Abrir una consola en la ruta donde se descargo y escribir el siguiente comando para descomprimir:

```bash
unzip 'carpeta_de_fuentes_descargadas'
```

3. Copiar los archivos .ttf en la carpeta fonts del sistema con el siguiente comando:

```bash
sudo cp -r /ruta/de/tu/carpeta/*.ttf /usr/local/share/fonts/
```

4. Luego debemos actualizar el cache con el siguiente comando:

```bash
sudo fc-cache -fv
```

5. Verificamos la instalación:

```bash
fc-list | wc -l
```

6.	Para cambiar la fuente por terminal se debe identificar el nombre y ejecutar el siguiente comando:

```bash
fc-list | grep "nombre-o-partes-del-nombre.ttf"
```

### Instalar Nvim en Linux:

Se necesita la versión 0.11 de Neovim para instalar Nvchad, para eso se debe seguir los siguientes pasos.

 1. [Descargar](https://github.com/neovim/neovim/releases/tag/stable) versión Tarball `nvim-linux-arm64.tar.gz` o `nvim-linux-x86_64.tar.gz`, para saber cual es la arquitectura del CPU correr el comando `uname -m`.

 2. Extraer estando en la carpeta donde se encuentra el archivo con el comando: `tar xzvf nvim-linux-arm64.tar.gz` o `tar xzvf nvim-linux-x86_64.tar.gz` dependiendo la arquitectura.

 3. Correr `./nvim-linux-arm64/bin/nvim` o `./nvim-linux-x86_64/bin/nvim` dependiendo de la arquitectura.

 4. Ahora se debe mover la carpeta comprimida a `/opt/` con el comando `sudo nvim-linux-arm64 /opt/nvim` o `sudo mv nvim-linux-x86_64 /opt/nvim`.

 5. Luego se debe agregar el binario al PATH (por ejemplo, en `~/.zshrc`) con el comando `export PATH="$PATH:/opt/nvim/bin"`.

 6. Verificación de permisos: Si el binario es el correcto pero no se ejecuta, asegúrate de que tenga permisos de ejecución con `chmod +x ./opt/nvim/bin/nvim`.

 7.  Si quieres una version estable pero antigua solo corre el siguiente comando dependiendo del sistema:

- Distribuciones basada en Debian:

	`sudo apt install neovim`

- Fedora:
	
    `sudo dnf install neovim`

- Distribuciones basadas en Arch:
			
    `sudo pacman -Sy neovim`

- NixOS:
	
    `sudo nix-env -Ai nixos.neovim`

- Void Linux:
			
    `sudo xbps-install -Sy neovim`

- Snap:
		
    `sudo snap install neovim`


### Instalación de paquetes:

Instalación de [Python](https://www.python.org/downloads/), [NodeJs](https://nodejs.org/en/download), [Npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm), [GCC](https://greenwebpage.com/community/how-to-install-gcc-compiler-on-linux/), [G++](https://greenwebpage.com/community/how-to-install-gcc-compiler-on-linux/), [Ripgrep](https://github.com/BurntSushi/ripgrep) y [Make](https://www.geeksforgeeks.org/how-to-install-make-on-ubuntu/):

```bash
sudo apt install Python nodejs npm gcc g++ -y && sudo apt-get install ripgrep make -y
```

### 🏃‍♂️ **Instalar Nvchad en Linux:**

 1. Ejecutar el siguiente comando:

```bash
git clone https://github.com/Glarah453/NvChad-g4bo0m ~/.config/nvim && nvim
```

 2. Correr `:MasonInstallAll` comando después de [lazy.nvim](https://github.com/LazyVim/LazyVim) termina de descargar plugins.

 3. Aprenda la personalización de ui y base46 desde `:h nvui`.

- Actualizar:

```bash
Lazy sync comando
```
- Desinstalar:

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

# 📋 **Requisitos de Instalación**

## **Windows (64/32):**

### Instalar Python:
	
- [Descargar](https://www.python.org/downloads/) e instalar, habilitar ruta en el path y desactivar limite de path al final de la instalación.

### Instalar Nodejs con Npm:
	
- [Descargar](https://nodejs.org/es/download) e instalar  y luego correr el comando `npm install -g npm`.

### Instalar Windows Terminal:	
	
- [Descargar](https://apps.microsoft.com/detail/9n0dx20hk701?hl=es-ES&gl=ES) y correr el ejecutable.
	


### Instalar Chocolatey:

Chocolatey es un gestor de paquetes para Windows que facilita la instalación, actualización y desinstalación de software a través de comandos. Es similar a herramientas como apt en Linux, pero específicamente para Windows. En esencia, te permite instalar aplicaciones, actualizar software y desinstalar programas sin necesidad de navegar por interfaces gráficas o buscar enlaces de descarga. 

- Correr el comando `Get-ExecutionPolicy` con permisos de administrador, si retorna "restricted", se debe correr este comando `Set-ExecutionPolicy AllSigned` o este `Set-ExecutionPolicy Bypass -Scope Process`.

- Una vez realizado lo anterior, correr este comando para instalar chocolatey en Windows:

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### Instalar Nvim:
	
- Descargar archivo MSI del [repositorio](https://github.com/neovim/neovim/releases/tag/stable)
	
- Correr el MSI
- Ejecutar nvim.exe en la CLI de su elección

- nota: en Windows es posible que necesite instalar vcruntime140.dll (https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170).


### Instalar un Nerd Font para Windows Terminal:
	
- Se descarga el [Nerd Font](https://www.nerdfonts.com/font-downloads) y se descomprime el archivo, luego se selecciona todos los archivos .ttf y apretar click derecho e instalar.

### Instalar Ripgrep con chocolatey:

- Ejecutar el siguiente comando en la consola de Windows:
		
    `choco install ripgrep`

### Instalar Mingw64 para compilaciónes de GCC en Windows:

- [Descargar](https://github.com/niXman/mingw-builds-binaries/releases) el archivo `x86_64-15.1.0-release-posix-seh-ucrt-rt_v12-rev0.7z`.

- Luego descomprimir y mover o copiar la carpeta `mingw64` en el disco local
	
- Una vez realizado lo anterior se debe copiar la ruta de la carpeta `mingw64/bin` e ingresarla en las variables de entorno del sistema (PATH).

### Instalar GnuWin32 para compilaciónes Make:

- [Descargar](https://sourceforge.net/projects/gnuwin32/) y correr el ejecutable.

- **Eliminar carpetas antiguas de configuraciones de neovim**
	
### **Instalación de NvChad:**

- Si estás usando Command Prompt(CMD)

```bash
git clone https://github.com/Glarah453/NvChad-g4bo0m %USERPROFILE%\AppData\Local\nvim && nvim
```

- Si estás usando PowerShell(pwsh)

```bash
git clone https://github.com/Glarah453/NvChad-g4bo0m $ENV:USERPROFILE\AppData\Local\nvim && nvim
```

- Si el camino anterior no funciona, pruebe cualquiera de estos caminos :
		
    - Para CMD: %LOCALAPPDATA%\nvim
			
            C:\Users\%USERNAME%\AppData\Local\nvim

	- Para PowerShell: $ENV:LocalAppData\nvim

	        C:\Users\$ENV:USERNAME\AppData\Local\nvim 

	
- Correr `:MasonInstallAll` comando después de [lazy.nvim](https://github.com/LazyVim/LazyVim) termina de descargar plugins.

- Eliminar el .git carpeta de la carpeta nvim.

- Aprenda la personalización de ui y base46 desde `:h nvui`.

- **Actualiza con el comando `Lazy sync`**.

- **Desinstalar**:

```bash
# Windows CMD
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data

# Windows PowerShell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
```



# 📝 Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
