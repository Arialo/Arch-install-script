mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base linux linux-firmware nano build make fakeroot
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt << 
