timedatectl set-timezone America/Chicago
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
echo archtest > /etc/hostname
touch /etc/hosts
echo 127.0.0.1	localhost ::1		localhost 127.0.1.1	archtest > /etc/hosts
echo "Set the password for the root user"
passwd
pacman -S grub efibootmgr -y
mkdir /boot/efi
mount /dev/sda1 /boot/efi
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S xorg wayland cinnamon firefox sudo -y
pacman -S lightdm-gtk-greeter networkmanager -y
systemctl enable lightdm.service
systemctl enable NetworkManager.service
useradd example
echo "Set the password for the base user"
passwd example
mkdir /home/example
cp .xinitrc /home/example/
exit
