
# Arch Linux dotfiles

Hewwo. There is my smol dotfiles collection for i3 window manager with gaps, polybar, rofi as launcher and system notifications daemon, nautilus as file manager and 

## Screenshots - https://uwu.waw.pl/gallery/

## Credits - https://github.com/valeowoia/dotfiles#Credits

## Installation
### 1. Install Arch Linux with i3wm as main system
#### 1.1 Go to https://archlinux.org/download and download ISO
#### 1.2 Write image to DVD or USB drive with any software you want.
#### 1.3 Boot from your installation media and choose what you want
#### 1.4 Configure iwctl to run wifi if you have one
```bash
iwctl
station wlan0 scan
station wlan0 get networks
station wlan0 connect YOUR_NETWORK
exit
ping 1.1.1.1
```
#### 1.5 run archinstall and choose installation preferences, for example - that's mine:
```bash
archinstall
```
```
Keyboard layout - us
Mirror region - Poland
Locale language - en_US
Locale encoding - utf-8
Drive(s) - /dev/sda/ or /dev/nvme0
Disk layout - Wipe all - ext4 - no
Disk encryption - Encryption password
Bootloader - grub-install
Swap - true
Hostname - **your hostname**
Root password - **your root password**
User account - Add a user - **username** - **password** - yes
Profile - xorg - select your GPU
Kernels - linux
Additional packages -

xterm firefox git nano mc polybar i3-wm i3lock neofetch i3status zsh lightdm picom dmenu feh rofi kitty arandr firefox zip unzip imagemagick calc mpd network-manager-applet xorg-xbacklight light noto-fonts-cjk noto-fonts-emoji noto-fonts nautilus lxappearance lightdm-webkit2-greeter base-devel dunst blueman xss-lock bashtop

Network configuration - Use NetworkManager
Timezone - Warsaw
Automatic time sync (NTP) - True
Optional repositories - multilib, testing
Install
```
#### 1.6 skip chroot and reboot your pc, log in via your creds (pls don't use root rn)
#### 1.7 install YaY AUR helper
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
### 2. Configure lightdm (logon greeter)
```bash 
yay lightdm-webkit-theme-aether
cd /etc/lightdm
sudo nano lightdm.conf
```
Press Ctrl+W and type 
```
#greeter-session=example-gtk-gnome
```
Change it to
```
greeter-session=lightdm-webkit2-greeter
```
Press Ctrl+S and Ctrl+X to exit
Enable lightdm.service to get lightdm on boot
```bash
sudo systemctl enable lightdm
```
Now open a tty2 with Ctrl+Alt+F2, log in and reboot your machine with
```bash 
reboot
```
In greeter session, choose i3 in drop-down menu and log in to i3wm
### 3. Use my configuration files
```bash
rm -rf ~/.config/i3/
rm -rf ~/.config/polybar/
rm -rf ~/.config/dunst/
rm -rf ~/.config/kitty/
rm -rf ~/.config/gtk-3.0/
git clone https://github.com/valeowoia/dotfiles.git
cp -r ~/dotfiles/i3 ~/.config/
cp -r ~/dotfiles/polybar ~/.config/
cp -r ~/dotfiles/userconfs ~/.config/
cp -r ~/dotfiles/rofi ~/.config/
cp -r ~/dotfiles/dunst ~/.config/
cp -r ~/dotfiles/kitty/ ~/.config/kitty/
sudo rm -rf /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/
sudo rm -rf /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/avatar-background.png
sudo cp -r ~/dotfiles/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/ /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/
sudo cp ~/dotfiles/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/avatar-background.png /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/avatar-background.png
cp -r ~/dotfiles/gtk-3.0/ ~/.config/gtk-3.0/
```
### 4. Enable Bluetooth for starting on boot
```bash
systemctl enable bluetooth
```
### 5. Wallpapers
```bash
#Put your images as:
~/.config/wall1.jpg #-- for desktop background
~/.config/lock1.png #-- for i3lock background
#for setting up backgrounds.

# WARNING!!! It must be your display size (eg. 1920x1080 (+-10%) PNG image for i3lock bg)
```
### 6. Install BigBlueTerm nerd fonts for using icons as fonts
```bash
sudo cp -r ~/dotfiles/BigBlueTerminal /usr/share/fonts/
fc-cache -fv
```
### 7. Install full icon pack for rofi program launcher
```bash
sudo pacman -Sy papirus-icon-theme
```
### 8. Reboot your computer to see changes
## Credits
Thanks theese people for helping and some configurations:

*mathisen99, sdomi, mkf, ar, hatkidchan, lisek, q3k, nerd font team, daniruiz*