docker_luminos
==============

Create a Luminos based markdown server.

This project provides docker file to create a Luminos markdown server on an Arch Linux host.

### Building the image

```
sudo docker build -t prinsmike/luminos .
```

### Running a container

```
sudo docker run -d -v /var/docker/volumes/luminos:/md prinsmike/luminos
```
