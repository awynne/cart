# things to configure

## wifi 

website: http://raspberrypihq.com/how-to-add-wifi-to-the-raspberry-pi/
config file: howto/interfaces.sample

## change hostname

http://www.howtogeek.com/167195/how-to-change-your-raspberry-pi-or-other-linux-devices-hostname/

## users and environment

* create user wynne: 
    adduser -G sudo wynne
* change default password for pi
* copy .vimrc to home dir
* install .pirc, symlink to .myrc
    ln -s ./.pirc ./myrc    
* create .bash\_profile, to set up local environment with these contents
    # ASW: user specific rc stuff
    if [ -e ~/.myrc ]; then
	. ~/.myrc
    fi

### ssh keys
* run ssh-keygen on new machine
* copy wynne@phil's id\_rsa.pub to new machine and add it to .ssh/authorized\_keys

# things to install

## packages from apt-get

* vim
* git

### todo

* java
* gradle
* python
* optional: set up air-play: http://www.raywenderlich.com/44918/raspberry-pi-airplay-tutorial
