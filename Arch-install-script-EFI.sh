mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
pacstrap /mnt base linux linux-firmware nano make fakeroot
genfstab -U /mnt >> /mnt/etc/fstab
cp Arch-install-script-pt2.sh /mnt
cp Arch-install-script/.xinitrc /mnt
arch-chroot /mnt
