#!/bin/bash

space_organization() 
{
    # Criar pastas e relacionar com user-dirs.dirs
    local dirs=(projetos vídeos músicas documentos imagens desktop internet)
    
    for dir in "${dirs[@]}"; do
        target_dir="$user/$dir"
        if [ ! -d "$target_dir" ]; then
            mkdir -p "$target_dir"
        else
            new_dir_name="$dir-$(date +%Y-%d/%m-%H:%M:%S)"
            echo "O diretório $target_dir já existe, renomeando para $new_dir_name"
            mv "$target_dir" "$user/$new_dir_name"
        fi
    done

    # Configurar user-dirs.dirs
    mkdir -p "$user/.config"
    user_dirs_file="$user/.config/user-dirs.dirs"
    local key_value_pairs=(
        "XDG_DESKTOP_DIR=$user/desktop"
        "XDG_DOWNLOAD_DIR=$user/internet"
        "XDG_TEMPLATES_DIR=$user/projetos"
        "XDG_PUBLICSHARE_DIR=$user/projetos"
        "XDG_DOCUMENTS_DIR=$user/documentos"
        "XDG_MUSIC_DIR=$user/músicas"
        "XDG_PICTURES_DIR=$user/imagens"
        "XDG_VIDEOS_DIR=$user/vídeos"
    )

    if [ ! -f "$user_dirs_file" ]; then
        touch "$user_dirs_file"
    fi

    for pair in "${key_value_pairs[@]}"; do
        key=$(echo "$pair" | cut -d= -f1)
        value=$(echo "$pair" | cut -d= -f2)

        if grep -q "^$key=" "$user_dirs_file"; then
            sed -i "s|^$key=.*|$key=\"$value\"|" "$user_dirs_file"
        else
            echo "$key=\"$value\"" >> "$user_dirs_file"
        fi
    done
}

personal_organization()
{
    # Baixar configurações do Github
    local my_git="https://github.com/sevle/dotfiles.git"
    git clone $my_git "$work_dir/dotfiles"

    # Mover arquivos de configuração
    mv "$work_dir/dotfiles/.zshrc" "$user"
    mv "$work_dir/dotfiles/.xinitrc" "$user"
    mv "$work_dir/dotfiles/projects/"* "$work_dir"

}

install_themes() 
{
    clone_and_configure() 
    {
        local theme_repo="$1"
        local dest_dir="$2"
        local theme_name=$(basename "$theme_repo" .git)

        git clone "$theme_repo" "$dest_dir/$theme_name"
        echo "$theme_name"
    }

    icon_theme_name=$(clone_and_configure "$icon_theme_url" "$icons_dir")
    mouse_theme_name=$(clone_and_configure "$mouse_theme_url" "$icons_dir")
    gtk_theme_name=$(clone_and_configure "$gtk_theme_url" "$themes_dir")

    dbus-launch gsettings set org.gnome.desktop.interface gtk-theme "$gtk_theme_name"
    dbus-launch gsettings set org.gnome.desktop.interface icon-theme "$icon_theme_name"
    dbus-launch gsettings set org.gnome.desktop.interface cursor-theme "$mouse_theme_name"
}

install_program() 
{
    local url=$1                    # Variável do primeiro argumento passado para a função, no caso a url 
    local dir=$(basename $url .git) # Captura o nome do projeto do github que usaremos para criar o diretório próprio

    # Esses 3 comandos clona o repositório do github, cria um diretório com $DIR, entra no diretório e compila o programa
    git clone "$url" "$work_dir/$dir"
    cd "$work_dir/$dir"
    make && sudo make install
}
