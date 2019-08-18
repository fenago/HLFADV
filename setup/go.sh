echo "=======Set up go======"
apt-get update
apt-get -y install golang-1.10-go

mv /usr/lib/go-1.10 /usr/local
mv /usr/local/go-1.10   /usr/local/go

# If GOROOT already set then DO Not set it again
if [ -z $GOROOT ]
then
    echo "export GOROOT=/usr/local/go" >> ~/.profile
    echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
    echo "export GOPATH=`pwd`/../gopath" >> ~/.profile
    echo "======== Updated .profile with GOROOT/GOPATH/PATH===="

    echo "export GOROOT=/usr/local/go" >> ~/.bashrc
    echo "export GOPATH=`pwd`/../gopath" >> ~/.bashrc
    echo "======== Updated .profile with GOROOT/GOPATH/PATH===="


else
    echo "======== No Change made to .profile ====="
fi
source ~/.profile
echo "======= Done. PLEASE LOG OUT & LOG Back In ===="
echo "Then validate by executing    'go version'"
