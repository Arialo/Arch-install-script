timedatectl set-timezone America/Chicago
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
echo archtest > /etc/hostname
touch /etc/hosts
echo 127.0.0.1	localhost ::1		localhost 127.0.1.1	archtest > /etc/hosts
echo "Set the password for the root user"
passwd
pacman -S grub -y
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S archlinux-keyring -y
pacman -S falkon lxqt screenfetch sudo -y
pacman -S lxdm networkmanager -y
systemctl enable lxdm.service
systemctl enable NetworkManager.service
useradd -m example
echo "Set the password for the base user"
passwd example
exit
