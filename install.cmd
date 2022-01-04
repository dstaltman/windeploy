@echo off

SET DIR=%~dp0%


:: Install Chocolatey package manager

::download choco install.ps1
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%DIR%install.ps1'))"
::run installer
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"
::delete installer
del %DIR%install.ps1


:: Get desired chocolatey packages

:: windows apps
choco install microsoft-windows-terminal -y
choco install powertoys -y

:: windows dev
choco install neovim -y
choco install github-desktop -y
choco install vscode -y
choco install pycharm -y
choco install git -y


:: get and install nerd fonts
git clone https://github.com/ryanoasis/nerd-fonts.git
.\nerd-fonts\install.ps1

:: WSL
wsl --install -d ubuntu

