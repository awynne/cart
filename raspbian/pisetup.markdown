# pi configuration

## setup steps

* TODO change default password for pi
* TODO network stuff
    * setup network for wifi
    * change hostname
    * reboot
* setup-packages.pl - install/update packages
* setup-symlinks.pls
    * git clone cart
    * copy .dotfiles 
* setup-ssh.pl - ssh setup
    * ssh-keygen
    * copy phil public key to .ssh/authorized\_keys

# documentation

## change hostname
http://www.howtogeek.com/167195/how-to-change-your-raspberry-pi-or-other-linux-devices-hostname/

## ssh keys
* run ssh-keygen on new machine
* copy wynne@phil's id\_rsa.pub to new machine and add it to .ssh/authorized\_keys

## wifi 

website: http://raspberrypihq.com/how-to-add-wifi-to-the-raspberry-pi/
config file: howto/interfaces.sample

## clone git cart repo
git clone https://github.com/awynne/cart.git
