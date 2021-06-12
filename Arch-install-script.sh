mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base linux linux-firmware nano make fakeroot
genfstab -U /mnt >> /mnt/etc/fstab
cp Arch-install-script-pt2.sh /mnt
arch-chroot /mnt && sh Arch-install-script-pt2.sh
