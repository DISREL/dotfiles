# Dotfiles - Ricemeister
### My dotfiles for Lenovo Thinkpad X1 Carbon (4K)
## Screenshots
![1](./images/1.png?raw=true)
![2](./images/2.png?raw=true)
![3](./images/3.png?raw=true)
![4](./images/4.png?raw=true)
## Details
- arch
- i3
- polybar
- picom
- rofi
- alacritty
- starship
- zscroll (yay)
## Packages
### Internals
- thunar
- nitrogen
- brightnessctl
- pipewire
- pipewire-pulse
- pipewire-alsa
- wireplumber
- pulsemixer
- systemd-git (yay)
- tlp (sudo cp ~/.config/tlp.conf /etc/tlp.conf)
- tlp-rdw
- acpi_call-dkms
- thermald
### Fonts
- otf-firamono-nerd
- ttf-firacode-nerd
- noto-fonts
### Optional/Flavor
- jre-openjdk
- gimp
- vlc
- qbittorrent
- filezilla
- vscode
- google-chrome
- spotify-launcher
- flameshot
- p7zip-gui (yay)
- slack-desktop (yay)
- dev.vencord.Vesktop (flatpak)
- dev.obsidian.Obsidian (flatpak)
## Notes
- To change default web browser - `xdg-settings set default-web-browser google-chrome.desktop`
- To generate thermald config files - `sudo ~/.config/dptfxtract/dptfxtract`
- Modify `/usr/lib/systemd/system/thermald.service`
    - Remove `--adaptive` to use the configuration files generated with dptfxtract so that thermald works even if the CPU model is unsupported.
    - Add `--exclusive-control` to prevent the aggressive throttling.
