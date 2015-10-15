## Ubuntu-Setup

### Docker Installation

This guide follows along Dockers's own [installation guide](https://docs.docker.com/installation/ubuntulinux/) for Ubuntu

* Prerequisite is a 64 bit Ubuntu Version, find out using
  ```uname -a```

  e.g. ```Linux aristoteles 3.13.0-65-generic #106-Ubuntu SMP Fri Oct 2 22:08:27 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux```

  x84_64 indicates, that we have a 64 bit version here. (Old netbooks are 32 bit architelcture and not supported by Docker, sorry.)

* Which version of Ubuntu have we got installed?

  ```cat /etc/issue```
  * Ubuntu 15.10 -> Wily
  * Ubuntu 15.04 -> Vivid
  * Ubuntu 14.04 -> Trusty
  * Ubuntu 12.04 -> Precise


* Open a new terminal

* add a GPG key for a the Docker package repository

  ```apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D```

* Open the /etc/apt/sources.list.d/docker.list file in your favorite editor or create it.

  If you don't know editors use:

  ```sudo nano /etc/apt/sources.list.d/docker.list```

  The shortcuts on the bottom of the screen help you save ([STRG]+[O]) and leave nano ([STRG]+[X])

* Remove existing entries, if any.

* Add ONE option for your Ubuntu version derived above:
```
# Ubuntu Precise
deb https://apt.dockerproject.org/repo ubuntu-precise main

# Ubuntu Trusty
deb https://apt.dockerproject.org/repo ubuntu-trusty main

# Ubuntu Vivid
deb https://apt.dockerproject.org/repo ubuntu-vivid main

# Ubuntu Wily
deb https://apt.dockerproject.org/repo ubuntu-wily main
```

* Update the package information
  ```sudo apt-get update```

* Delete any old version of Docker
  ```sudo apt-get purge lxc-docker*```

* Verify that apt is pulling from the right repository
  ```apt-cache policy docker-engine```
  should contain lines containing: ``` https://apt.dockerproject.org/repo/```

* Install prequesites:
```
  Ubuntu  Precise:
  sudo apt-get install linux-image-generic-lts-precise linux-headers-generic-lts-precise xserver-xorg-lts-precise libgl1-mesa-glx-lts-precise
  Ubuntu  Trusty:
  sudo apt-get install linux-image-generic-lts-trusty linux-headers-generic-lts-trusty xserver-xorg-lts-trusty libgl1-mesa-glx-lts-trusty
  Ubuntu  Vivid:
  sudo apt-get install linux-image-generic-lts-vivid linux-headers-generic-lts-vivid xserver-xorg-lts-vivid libgl1-mesa-glx-lts-vivid
  Ubuntu  Wily:
  sudo apt-get install linux-image-generic-lts-wily linux-headers-generic-lts-wily xserver-xorg-lts-wily libgl1-mesa-glx-lts-wily
```

* If this installed new packages, reboot now.

* Install Docker

  ```sudo apt-get install docker-engine```

* Verify, that this worked:

  ```sudo docker run hello-world```

  You should see one line in the output containing: This message shows that your installation appears to be working correctly.

  Warning messages in between are fine.


### Docker Compose installation


* Become root for a second:

  ```sudo su```

* Download Docker Compose:

  ```curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose```

* Become yourself again:

  ```exit```

* Make docker-compose executeable

  ```sudo chmod +x /usr/local/bin/docker-compose```

* Check the installation:

  ```docker-compose -v```

  In the example output: ```docker-compose version: 1.4.2``` indicates that the installation was successfull

