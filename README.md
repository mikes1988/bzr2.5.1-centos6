# bzr2.5.1-centos6
Repo to build bzr-2.5.1 for centos6

## Pulling ##

Simply `docker pull mikes1988/bzr2.5.1-centos6`

## Building Docker Image ##

If you want to build your own, clone this repo and build using something like:
  `docker build -t mikes1988/bzr2.5.1-centos6 .`
  
## Creating RPM ##

Run `./run` script.  This wraps the required docker command.  RPMs get output to `$WRKDIR/output`
