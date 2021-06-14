THIS SCRIPT IS FOR BIOS OR NON UEFI ONLY

How to use:
1. Use fdisk to format your drive
Usually along the lines of $fdisk /dev/sda

2. Run pacman -Syy git -y
This will install git and update the pacman repositories

3. Run git clone https://github.com/Arialo/Arch-install-script.git
This will clone the scripts into your home directory

4. Copy the scripts out of a folder with cp -r Arch-install-script/* ~
This will put the installation scripts into your home folder

5. Run the first script with sh Arch-install-script.sh
This will kick off everything and there may not be much input after this

6. Wait for the first script to be done then run sh Arch-install-script-pt2.sh

7. Input the passwords for the root and base user and press enter/y to install some packages

8. Reboot and log in as the root user to get everything else set up
The main user doesn't work for reasons unknown to me so root is pretty much the only option until you get your user set up

9. Run useradd -m "your user" and passwd "your user"
Replace "your user" with the username you want

10. Run EDITOR=nano visudo and add "your user" ALL=(ALL) ALL under the user privilege specification section
This will allow you to run commands using sudo as your main user

11. (Debatably optional) Customize to your heart's content
Just customize as much as you want, desktop environments, login managers, themes and pretty much anything else can be changed to whatever you want
