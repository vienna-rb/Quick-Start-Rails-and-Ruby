## Ubuntu-Setup

### Docker Installation

This guide follows along Dockers's own [installation guide](https://docs.docker.com/installation/ubuntulinux/) for Ubuntu

* Open a new terminal

* Prerequisite is a 64 bit Ubuntu Version, find out using <br/>
  ```uname -a``` <br/>
  e.g. ```Linux aristoteles 3.13.0-65-generic #106-Ubuntu SMP Fri Oct 2 22:08:27 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux``` <br/>
  x84_64 indicates, that we have a 64 bit version here. (Old netbooks are 32 bit architelcture and not supported by Docker, sorry.)

* Which version of Ubuntu have we got installed? <br/>
  ```cat /etc/issue```
  * Ubuntu 15.10 -> Wily
  * Ubuntu 15.04 -> Vivid
  * Ubuntu 14.04 -> Trusty
  * Ubuntu 12.04 -> Precise

* add a GPG key for a the Docker package repository <br/>
  ```apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D```
  If this fails, no worries, you might get some warning later on installing, that you can safely ignore.

* Open the /etc/apt/sources.list.d/docker.list file in your favorite editor or create it. <br/>
  If you don't know editors use: <br/>
  ```sudo nano /etc/apt/sources.list.d/docker.list``` <br/>
  The shortcuts on the bottom of the screen help you save ([STRG]+[O]) and leave nano ([STRG]+[X])

* Remove existing entries, if any.

* Add ONE option for your Ubuntu version derived above:
  * Ubuntu Precise <br/>
    ```deb https://apt.dockerproject.org/repo ubuntu-precise main```
  * Ubuntu Trusty <br/>
    ```deb https://apt.dockerproject.org/repo ubuntu-trusty main```
  * Ubuntu Vivid <br/>
    ```deb https://apt.dockerproject.org/repo ubuntu-vivid main```
  * Ubuntu Wily <br/>
    ```deb https://apt.dockerproject.org/repo ubuntu-wily main```

* Update the package information <br/>
  ```sudo apt-get update```

* Delete any old version of Docker <br/>
  ```sudo apt-get purge lxc-docker*```

* Verify that apt is pulling from the right repository <br/>
  ```apt-cache policy docker-engine``` <br/>
  should contain lines containing: ``` https://apt.dockerproject.org/repo/```

* Install prequesites:
  * Ubuntu  Precise <br/>
    ```sudo apt-get install linux-image-generic-lts-precise linux-headers-generic-lts-precise xserver-xorg-lts-precise libgl1-mesa-glx-lts-precise```
  * Ubuntu  Trusty, Vivid or Wily <br/>
    ```sudo apt-get install linux-image-generic linux-headers-generic xserver-xorg libgl1-mesa-glx```

* If this installed new packages, reboot now.

* Install Docker <br/>
  ```sudo apt-get install docker-engine```

* Verify, that this worked: <br/>
  ```sudo docker run hello-world``` <br/>
  You should see one line in the output containing: This message shows that your installation appears to be working correctly. <br/>
  Warning messages in between are fine.

* We've seen, that in the case, that docker didn't start on it's own another reboot has helped.

### Docker Compose installation

* Become root for a second: <br/>
  ```sudo su```

* Download Docker Compose: <br/>
  ```curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose```

* Get back to your own account: ```exit```

* Make docker-compose executeable <br/>
  ```sudo chmod +x /usr/local/bin/docker-compose```

* Check the installation: <br/>
  ```docker-compose -v``` <br/>
  In the example output: ```docker-compose version: 1.4.2``` indicates that the installation was successfull.

