# Dotfiles
My dotfiles for Lenovo Thinkpad X1 Carbon (Gen 9)

Some quick details about this rice:
- OS - EndeavourOS (Arch btw...)
- Window Manager - i3wm
- Bar - polybar (zscroll for controlling media)
- Compositor - picom
- Launcher - rofi
- Terminal - alacritty (with starship)

I am aiming this rice to be dedicated to the Thinkpad as it's my research laptop and essentially helps me learn how Linux works.

Submit a pull request if you think a change would be nice. I did the base in 2 days so DON'T DRILL MY ASS kekw :P

## Screenshots
![1](./images/1.png?raw=true)
![2](./images/2.png?raw=true)
![3](./images/3.png?raw=true)
![4](./images/4.png?raw=true)

## Packages
### Base
- arch
- i3
- polybar
- picom
- rofi
- alacritty
- starship
### Internals
- thunar
- nitrogen
- brightnessctl
- pipewire
- pipewire-pulse
- pipewire-alsa
- wireplumber
- pulsemixer
- power-profiles-daemon
- acpi_call-dkms
- thermald
- zscroll (yay)
- systemd-git (yay)
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
- Replace TLP config - `sudo cp ~/.config/tlp.conf /etc/tlp.conf`
- Default web browser to Google Chrome - `xdg-settings set default-web-browser google-chrome.desktop`
- Generate thermald config files - `sudo ~/.config/dptfxtract/dptfxtract`
- Modify `/usr/lib/systemd/system/thermald.service`
    - Remove `--adaptive` to use the configuration files generated with dptfxtract so that thermald works even if the CPU model is unsupported.
    - Add `--exclusive-control` to prevent the aggressive throttling.
