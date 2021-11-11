THIS SCRIPT WILL WIPE OUT ANY OPERATING SYSTEMS ON YOUR FIRST HARD DRIVE.
MAKE SURE YOU EDIT THE SCRIPT OR HAVE THE ONLY DRIVE IN YOUR PC AS THE INSTALL LOCATION

How to use:
1. Use fdisk to format your drive
Usually along the lines of $fdisk /dev/sda

2. Make the partitions with fdisk
For non uefi use one big partition
For uefi use 1 512MB partition and fill up the rest of the drive with another partition
press t in fdisk and change the type of the 512MB partition to efi

3. Run pacman -Syy git -y
This will install git and update the pacman repositories

4. Run git clone https://github.com/Arialo/Arch-install-script.git
This will clone the scripts into your home directory

5. Copy the scripts out of a folder with cp -r Arch-install-script/* ~
This will put the installation scripts into your home folder

6. Edit the scripts with nano and change the hostname and username from testarch to whatever you want and from example to your username
Also be sure to edit the desktop environment packages to download the one that you want
I understand that not everyone wants xfce or whatever so choose what you want

7. Run the first script with sh Arch-install-script.sh
This will kick off everything and there may not be much input after this

8. Wait for the first script to be done then run sh Arch-install-script-pt2.sh
Use the EFI one if you're installing with EFI

9. Input the passwords for the root and base user and press enter/y to install some packages

10. Reboot and log in as the user you made to get everything else set up

11. Run EDITOR=nano visudo and add "your user" ALL=(ALL) ALL under the user privilege specification section
This will allow you to run commands using sudo as your main user

12. (Debatably optional) Customize to your heart's content
Just customize as much as you want, desktop environments, login managers, themes and pretty much anything else can be changed to whatever you want
