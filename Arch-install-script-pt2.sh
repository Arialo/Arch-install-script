timedatectl set-timezone America/Chicago
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
echo archtest > /etc/hostname
touch /etc/hosts
echo 127.0.0.1	localhost ::1		localhost 127.0.1.1	archtest > /etc/hosts
passwd
pacman -S grub -y
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S xorg xfce4 xfce4-goodies firefox -y
pacman -S sddm networkmanager -y
systemctl enable sddm.service
systemctl enable NetworkManager.service
useradd example
passwd example
exit
