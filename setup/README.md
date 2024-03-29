Environment Setup
=================

# Start the VM
> vagrant up
> vagrant ssh

cd ./setup
chmod u+x  *.sh

>  ./docker.sh
  Logout of VM & Log back in
>  ./go.sh
  Logout of VM & Log back in
>  ./fabric-setup.sh
>  ./caserver-setup.sh




# Setup Docker
1. cd /vagrant/setup
2.  ./docker.sh
3. Logout and Log in to the Vagrant VM
4. docker version    <<This will show the version>>

# Setup GoLang
1. cd /vagrant/setup
2.  ./go.sh
3. Logout and Log in to the Vagrant VM
4. go version        <<This will show the version>>

# Setup fabric
1. cd /vagrant/setup
2.  ./fabric-setup.sh
3. orderer version
4. peer version
5. Creates the folders under the project root
    - fabric-samples
    - gopath
    - node

# Setup CA Server
1. cd /vagrant/setup
2.  ./caserver-setup.sh
3. fabric-ca-sever   version
4. fabric-ca-client  version

# Setup the JQ utility
1. cd /vagrant/setup
2.  jq.sh
3. jq version



Windows users:
==============
> vagrant ssh
> cd workspace
> mkdir   temp                   <<All commands for setup in this directory>>

Linux | Mac Users
=================
Create workspace directory 
Create temp directory and execute all setup tasks in it


Instructions:
=============
1. Update the repository
>  apt-get update

2. Check if you have Python v2.7
> python --version
If you do not already have it then use the command below

3. Install Python on Ubuntu
>  apt-get install -y software-properties-common python-software-properties

4. Install Go Lang
https://medium.com/@patdhlk/how-to-install-go-1-9-1-on-ubuntu-16-04-ee64c073cd79
 curl -O https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
 tar -xvf go1.9.1.linux-amd64.tar.gz
 mv go /usr/local

5. Change the .profile
> cd $HOME
Edited .profile using vi
Add the following 2 lines to the end of the file

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

Save the file logout of the VM and then log back in
Verify go is setup
> go version
It should show you 1.9.x

6. Install Docker
Eexcute the script

cd /vagrant/setup
 ./docker.sh

>Exit out of shell
vagrant reload
vagrant ssh


* Install samples and binary

To install samples did this

cd /vagrant
mkdir temp
cd temp
../setup/samples.sh



7. Install the fabric samples & binaries for fabric

> 
curl -sSL https://goo.gl/6wtTN5 | bash -s 1.2.0



This worked:
used the LFID
git clone https://acloudfan@gerrit.hyperledger.org/r/a/fabric
https://gerrit.hyperledger.org/r/#/admin/projects/fabric

8. Install jq
 apt-get install -y jq


Direct Binary Download Link
===========================
https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/

Script executed for fabric-samples setup
========================================
https://github.com/hyperledger/fabric/blob/master/scripts/bootstrap.sh
