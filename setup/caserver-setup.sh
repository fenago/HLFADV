export PATH=$PATH:$GOROOT/bin

# Sets up the fabric-ca-server & fabric-ca-client
apt install -y libtool libltdl-dev

# Document process leads to errors as it leads to pulling of master branch
go get -u github.com/hyperledger/fabric-ca/cmd/...

# git clone --branch release-1.3 https://github.com/hyperledger/fabric-ca.git
# rm -rf $GOPATH/src/github.com/hyperledger/fabric-ca 2> /dev/null
# mv fabric-ca  $GOPATH/src/github.com/hyperledger
# go install github.com/hyperledger/fabric-ca/cmd/...

cp $GOPATH/bin/*    /usr/local/bin



cp $GOPATH/bin/*    $PWD/../bin

rm $GOPATH/bin/* 

echo "Done."


