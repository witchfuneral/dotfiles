#!/bin/sh
# ~ installer for my dotfiles ~ 
# pretty dogshit script, sorry!

echo "downloading latest river-bsp-layout"
mkdir /tmp/dotfiles
wget https://github.com/areif-dev/river-bsp-layout/releases/latest/download/river-bsp-layout-x86_64-unknown-linux-gnu.tar.gz -O /tmp/dotfiles/river.tar.gz
tar xvf /tmp/dotfiles/river.tar.gz -C /tmp/dotfiles/
echo "done"
echo ""
echo "copying river-bsp-layout to your path, root required :("
sudo cp /tmp/dotfiles/river-bsp-layout-x86_64-unknown-linux-gnu /usr/local/bin/river-bsp-layout
echo "done"
echo ""
echo "installing scripts to path, root required again"
sudo cp scripts/* /usr/local/bin/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "done"
echo ""
echo "installing dotfiles"
mkdir -p ~/.config/kitty ~/.config/river ~/.config/walls ~/.config/waybar ~/.config/wofi ~/Pictures/Wallpapers
cp dotfiles/kitty/kitty.conf ~/.config/kitty/
cp dotfiles/river/init ~/.config/river/
cp dotfiles/waybar/config ~/.config/waybar/
cp dotfiles/waybar/style.css ~/.config/waybar/
cp dotfiles/wofi/config ~/.config/wofi/
cp dotfiles/wofi/style.css ~/.config/wofi/
echo "dotfiles installed!"
rm -rf /tmp/dotfiles
