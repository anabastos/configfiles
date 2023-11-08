pacman -Syu

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install yubioath-desktop
sudo snap install spotify
sudo snap install ksudoku
sudo snap install postman
sudo snap install discord
sudo snap install slack
sudo snap install telegram-desktop
sudo snap install zoom-client
sudo snap install obs-studio
sudo snap install brave
