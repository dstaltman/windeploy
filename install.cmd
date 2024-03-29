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
choco install terminals -y
choco install jetbrains-rider -y
choco install everything -y
choco install slack -y
choco install beyondcompare -y
choco install windirstat -y
choco install steam -y
choco install parsec -y
choco install discord -y
choco install 1password -y
choco install googlechrome -y


:: get and install nerd fonts
:: this is huge and takes forever. BEWARE!
git clone https://github.com/ryanoasis/nerd-fonts.git
.\nerd-fonts\install.ps1

:: WSL
wsl --install -d ubuntu

