#!/bin/sh
# ~ installer for my dotfiles ~ 
# pretty dogshit script, sorry!

dependency-install () {
# install only the dependencies
  sudo pacman -S sway swaylock wl-clipboard swaylock curl wget wlr-randr gvfs-smb ly xfce4-volumed-pulse pamixer brightnessctl python-gobject zsh grim slurp imagemagick waybar kitty nemo mate-polkit xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk gnome-keyring dunst nwg-look ttf-iosevka-nerd ttf-jetbrains-mono-nerd wmenu --no-confirm
}

while true; do
        read -p "install listed dependencies? (check readme for detailed list) (y/n): " yn
    case $yn in
        [Yy]* ) dependency-install; break;;
        [Nn]* ) break;;
        * ) echo "invalid answer, please answer (y/n): ";;
    esac
done

echo "dependencies installed."

# installing river-bsp-layout

echo "downloading latest river-bsp-layout"
mkdir /tmp/dotfiles
wget https://github.com/areif-dev/river-bsp-layout/releases/latest/download/river-bsp-layout-x86_64-unknown-linux-gnu.tar.gz -O /tmp/dotfiles/river.tar.gz
tar xvf /tmp/dotfiles/river.tar.gz -C /tmp/dotfiles/
echo "done"
echo ""
echo "copying river-bsp-layout to your path, root required :("
sudo cp /tmp/dotfiles/river-bsp-layout-x86_64-unknown-linux-gnu /usr/local/bin/river-bsp-layout
echo "done"

# installing dotfiles
# 1 - scripts

echo ""
echo "installing scripts to path, root required again"
sudo cp scripts/* /usr/local/bin/

# 2 - neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "done"

# 3 - directories

echo ""
echo "creating directories"
mkdir -p ~/.config/kitty ~/.config/river ~/Pictures/Screenshots ~/.config/waybar ~/.config/wofi ~/.config/nvim ~/.config/dunst ~/.config/xdg-desktop-portal ~/Pictures/Wallpapers

# 4 - oh-my-zsh
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp dotfiles/zshrc ~/.zshrc
# change shell for current user
sudo sed -i "s,$USER:/usr/bin/bash,$USER:/usr/bin/zsh,g" /etc/passwd

# 5a - wallpaper
cp assets/walls/* ~/Pictures/Wallpapers/

# 5b - actual dotfiles
cp dotfiles/kitty/kitty.conf ~/.config/kitty/
cp dotfiles/river/init ~/.config/river/
cp dotfiles/waybar/config ~/.config/waybar/
cp dotfiles/waybar/style.css ~/.config/waybar/
cp dotfiles/wofi/config ~/.config/wofi/
cp dotfiles/wofi/style.css ~/.config/wofi/
cp dotfiles/nvim/init.vim ~/.config/nvim/init.vim
cp dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc
cp dotfiles/xdg-desktop-portal/portals.conf ~/.config/xdg-desktop-portal/portals.conf
echo "dotfiles installed!"

# delete temp files
rm -rf /tmp/dotfiles
