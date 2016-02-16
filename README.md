#Overview
This project is a simple Docker image that runs the [Datomic](http://www.datomic.com/) database. 

#Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

#Building
Type `docker-compose build` to build the image.

#Installation
Docker will automatically install the newly built image into the cache.

##Environment Variables
TODO

#Tips and Tricks

##Verifying The Image
`docker-compose up` will launch the image you just built, verifying it works. The Docker Compose file is 
configured to mount your home directory into the container.  

##Launching The Image
Run `./datomic.sh` and it will launch the container with the default command line argument of `--version`. 

#Troubleshooting
TODO

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

