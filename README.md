<h1 align="center">dotfiles - river edition</h1>

![screenshot](https://raw.githubusercontent.com/dyingwillow/dotfiles-river/refs/heads/master/assets/dotfiles.png)

- distro: [arch linux](https://archlinux.org/)
- window manager: [river](https://codeberg.org/river/river)
- top bar: [waybar](https://github.com/Alexays/Waybar)
- launcher: [wofi](https://hg.sr.ht/~scoopta/wofi)
- file manager: [pcmanfm](https://archlinux.org/packages/extra/x86_64/thunar/)
- terminal emulator: [kitty](https://sw.kovidgoyal.net/kitty/)
- shell: [zsh](https://www.zsh.org/) + [oh-my-zsh](https://ohmyz.sh/)
- editor: [visual studio code](https://github.com/microsoft/vscode)
- font: [iosevka nerd](https://github.com/ryanoasis/nerd-fonts)
- *fetch: [hyfetch](https://github.com/hykilpikonna/hyfetch)

## Dependencies

- river
- wl-clipboard
- swaylock
- grim
- slurp
- python-pywal
- waybar
- kitty
- thunar
- polkit-gnome
- xdg-desktop-portal & xdg-desktop-portal-wlr 
- gnome-keyring
- mako
- swww

# Optional
- flatpak
- [telegram](https://desktop.telegram.org/)
- steam

# Installation

after installing the dependencies and the optional programs, just copy everything in the dotfiles folder to the ~/.config directory.

```
$ git clone https://github.com/dyingwillow/dotfiles

$ cd dotfiles

$ cp -r * ~/.config/ 
```
