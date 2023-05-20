#!/bin/bash

if [ -n "$SUDO_USER" ]; then
    user="/home/$SUDO_USER"
else
    user="$HOME"
fi

packages="htop neovim neofetch zsh"

dwm_url="https://git.suckless.org/dwm"
st_url="https://git.suckless.org/st"
dmenu_url="https://git.suckless.org/dmenu"
slock_url="https://git.suckless.org/slock"

icon_theme_url="https://github.com/snwh/paper-icon-theme.git"
mouse_theme_url="https://github.com/keeferrourke/capitaine-cursors.git"
gtk_theme_url="https://github.com/vinceliuice/Matcha-gtk-theme.git"

required_packages="git base-devel gsettings-desktop-schemas xorg-xinit libxinerama \
                   libxft xorg-server libxrandr libxcursor libxinerama libxrender \
                   xorg-fonts-misc libx11 xorg-server-devel xorg-xrandr xdg-utils"

missing_packages=""

download_dir="$user/internet/"
work_dir="$user/projetos/"
themes_dir="/usr/share/themes"
icons_dir="/usr/share/icons"

# Verifica se os pacotes estão instalados
for package in $required_packages; do
    if ! command -v $package &> /dev/null; then
        missing_packages+="$package "
    fi
done

# Se houver pacotes faltando, pergunte ao usuário se deseja instalá-los
if [ -n "$missing_packages" ]; then
    echo "Os seguintes pacotes estão faltando: $missing_packages"
    read -p "Deseja instalar os pacotes faltantes? (s/N) " response
    response=${response,,} # Torna a resposta minúscula
    if [[ $response =~ ^(s|sim)$ ]]; then
        pacman -Sy --needed --noconfirm
        pacman -S --needed --noconfirm $missing_packages
    else
        echo "Os pacotes necessários não estão instalados. Encerrando o script."
        exit 1
    fi
fi

source "$(dirname "$BASH_SOURCE")/functions.sh"
space_organization
install_themes

# Instalar dwm, st, dmenu e slock da suckless
install_program "$dwm_url"
install_program "$st_url"
install_program "$dmenu_url"
install_program "$slock_url"

# Instalar pacotes
pacman -S --needed --noconfirm $packages
