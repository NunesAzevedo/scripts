# Instalations in Fedora 41 - KDE Plasma

cd ~ # Go to home directory

# Install Git
echo -e "\n*********************************"
echo -e "\nInstalando o Git"
echo -e "\n*********************************\n"
sudo dnf install git -y

# Oh my posh themes
echo -e "\n*********************************"
echo -e "\nInstalando os temas do Oh my posh"
echo -e "\n*********************************\n"
git clone git@github.com:NunesAzevedo/oh_my_posh_themes.git

# Personal bash alias
echo -e "\n***************************************"
echo -e "\nInstalando Alias do bash personalizadas"
echo -e "\n***************************************\n"
git clone git@github.com:NunesAzevedo/.bashrc.d.git

# Change branch to fedora aliases
cd ./.bashrc.d
git checkout fedora
cd ~

# Add remote Flatpak repositories
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install VSCode
echo -e "\n***************************************"
echo -e "\nInstalando o VS Code"
echo -e "\n***************************************\n"

# Connect do Microsoft repository for download and future updates
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y    

# Install Neovim
sudo dnf install neovim -y

