exit
systemctl enable NetworkManager.service
systemctl enable lightdm.service
pacman -S xorg xfce4 xfce4-goodies firefox sddm NetworkManager -y
grub-mkconfig -o /boot/grub/grub.cfg
grub-install /dev/sda
pacman -S grub
passwd
echo 127.0.0.1	localhost ::1		localhost 127.0.1.1	archtest > /etc/hosts
touch /etc/hosts
echo archtest > /etc/hostname
export LANG=en_US.UTF-8
echo LANG=en_US.UTF-8 > /etc/locale.conf
locale-gen
timedatectl set-timezone America/Chicago
