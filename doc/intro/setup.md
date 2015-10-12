## Setup

This tutorial uses [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) to get you started right away and not worry about any special setup on your system.

If you are not yet familiar with Docker that's no problem. Once you installed Docker and Docker Compose just remember to make sure whenever you see a ":whale:" next to a command that you are in a "container".

### Installing Docker and Docker Compose

If you are on a Mac or Windows you can simply download and install the [Docker Toolbox](https://www.docker.com/toolbox).
On Windows you will need to install Docker Compose manually. Start at step **4** here: http://docs.docker.com/compose/install/


If you are unsure if you are in a container or not, ask by typing in the terminal:

```
wherami
```

and pressing enter either will tell you "You are in a container!" or it will say something like "Command not found". If you are not in a container and the command was **not found** simply change into the directory of this tutorial in your terminal (with `cd`) and run the following command:

```
docker-compose run shell
```

If you see "=> You are in a container!" then you are all good and you can run the commands. :)

If you are more interested in how to work with Docker you can follow up here:

  * [Getting started with Docker - Servers for Hackers](https://serversforhackers.com/getting-started-with-docker)
  * [Docker Compose - Quick Start](https://docs.docker.com/compose/#quick-start)

Keep in mind that in the tutorial you will see commands marked with ":whale:" to indicate that this is executed in the Docker container.
