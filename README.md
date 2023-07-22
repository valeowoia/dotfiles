
# Arch Linux dotfiles

Hewwo. There is my smol dotfiles collection for i3 window manager with gaps, polybar, rofi as launcher and system notifications daemon, nautilus as file manager and 

## Screenshots - https://uwu.waw.pl/gallery/

## Credits - https://github.com/valeowoia/dotfiles#Credits

## Pay attention to change backlight buttons binding in ~/.config/i3/config after installation


## Installation

### 1. Install Arch Linux with i3wm as main system

#### 1.1 Go to https://archlinux.org/download and choose mirror for getting ISO image
#### 1.2 Go to chosen mirror release folder, for example https://arch.midov.pl/arch/iso/2023.07.01/ and download archlinux-2023.07.01-x86_64.iso, or any latest release
#### 1.3 Write image to DVD or USB drive with any software you want.
#### 1.4 Boot from your installation media and choose what you want
#### 1.5.1 If you have a PC without wifi (eth0 only), continue to 1.7
#### 1.5.2 If you have a laptop with wlan, and that's preferred connection method, continue to 1.6
#### 1.6 After you run Arch installation media use iwctl

```bash
iwctl
```
```bash
station wlan0 scan
```
```bash
station wlan0 get networks
```
```bash
station wlan0 connect YOUR_NETWORK
```
```bash
exit
```
```bash
ping 1.1.1.1
```

#### 1.7 run archinstall and choose installation preferences, for example - there's my
```bash
archinstall
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
```bash
xterm firefox git nano mc polybar i3-wm i3lock neofetch i3status zsh lightdm picom dmenu feh rofi kitty arandr firefox zip unzip imagemagick calc mpd network-manager-applet xorg-xbacklight light noto-fonts-cjk noto-fonts-emoji noto-fonts nautilus lxappearance lightdm-webkit2-greeter base-devel dunst blueman xss-lock bashtop
```

Network configuration - Use NetworkManager

Timezone - Warsaw

Automatic time sync (NTP) - True

Optional repositories - multilib, testing

Install

#### 1.8 reboot your pc without chroot using and log in as your user name and password (not as root)

#### 1.9 install YaY AUR helper

```bash
git clone https://aur.archlinux.org/yay.git
```
```bash
cd yay
```
```bash
makepkg -si
```

### 2. Configure lightdm (logon greeter)

```bash 
yay lightdm-webkit-theme-aether
```


```bash
cd /etc/lightdm
```

```bash
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

Open xterm with Win+Enter

Remove all dummy configurations

```bash
rm -rf ~/.config/i3/ && rm -rf ~/.config/polybar/ && rm -rf ~/.config/dunst/ && rm -rf ~/.config/kitty/ && rm -rf ~/.config/gtk-3.0/
```

Fetch this repo

```bash
git clone https://github.com/valeowoia/dotfiles.git
```

Copy i3wm configuration

```bash
cp -r ~/dotfiles/i3/ ~/.config/i3/
```

Copy polybar configuration

```bash
cp -r ~/dotfiles/polybar/ ~/.config/polybar/
```

Copy additional scripts

```bash
cp -r ~/dotfiles/userconfs/ ~/.config/userconfs/
```

Copy rofi configuration

```bash
cp -r ~/dotfiles/rofi/ ~/.config/rofi
```

Copy dunst configuration

```bash
cp -r ~/dotfiles/dunst/ ~/.config/dunst/
```

Copy kitty configuration

```bash
cp -r ~/dotfiles/kitty/ ~/.config/kitty/
```
Copy User picture and wallpaper for lightdm

```bash
sudo rm -rf /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/ && sudo rm -rf /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/avatar-background.png && sudo cp -r ~/dotfiles/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/ /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/ && sudo cp -r ~/dotfiles/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/avatar-background.png /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/avatar-background.png
```

Copy GTK icons and fonts configuration

```bash
cp -r ~/dotfiles/gtk-3.0/ ~/.config/gtk-3.0/
```

### 4. Enable Bluetooth for starting on boot

```bash
systemctl enable bluetooth
```

### 5. Copy your wallpapers for desktop and lock screen

```bash
cp  $SOURCE/wall1.jpg ~/.config/wall1.jpg
```

```bash
cp  $SOURCE/lock1.png ~/.config/lock1.png
```
### WARNING!!! It must be your display size (eg. 1920x1080 (+-10%) PNG image for lock screen)

### 6. Install BigBlueTerm nerd fonts for correct polybar working

```bash
sudo cp -r ~/dotfiles/BigBlueTerminal/ /usr/share/fonts/BigBlueTerminal/
```

```bash
fc-cache -fv
```

### 7. Install full icon pack for rofi program launcher

```bash
sudo pacman -Sy papirus-icon-theme
```

### 8. Reboot your computer to see changes

## Credits

Thanks theese people for helping and some configurations

*mathisen99, sdomi, mkf, ar, hatkidchan, lisek, q3k, nerd font team*

