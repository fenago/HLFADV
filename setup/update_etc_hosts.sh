# Update /etc/hosts
source    ./manage_hosts.sh

HOSTNAME=peer1.acme.com
#removehost $HOSTNAME            &> /dev/null
# addhost $HOSTNAME
HOSTNAME=peer1.acme.com
sudo echo "127.0.0.1 $HOSTNAME" >> /etc/hosts
HOSTNAME=peer1.budget.com
#removehost $HOSTNAME            &> /dev/null
#addhost $HOSTNAME
sudo echo "127.0.0.1 $HOSTNAME" >> /etc/hosts
HOSTNAME=orderer.acme.com
#removehost $HOSTNAME            &> /dev/null
#addhost $HOSTNAME
sudo echo "127.0.0.1 $HOSTNAME" >> /etc/hosts
HOSTNAME=postgresql
#removehost $HOSTNAME            &> /dev/null
#addhost $HOSTNAME
sudo echo "127.0.0.1 $HOSTNAME" >> /etc/hosts
HOSTNAME=explorer
#removehost $HOSTNAME            &> /dev/null
#addhost $HOSTNAME
sudo echo "127.0.0.1 $HOSTNAME" >> /etc/hosts
