
# Arch Linux dotfiles

Hewwo. There is my smol dotfiles collection for i3 window manager with gaps, polybar, rofi as launcher and system notifications daemon, nautilus as file manager and 

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
xterm firefox git nano mc polybar i3-wm i3lock neofetch afetch i3bar zsh lightdm picom dmenu feh rofi kitty xrandr arandr firefox zip unzip imagemagick calc mpd network-manager-applet xorg-xbacklight light noto-fonts-cjk noto-fonts-emoji noto-fonts nautilus
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
