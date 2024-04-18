# load and enable vhost_net module for use on KVM

sudo modprobe vhost_net;
echo "Show loaded modules:";
lsmod | grep vhost;
echo " ";
echo "Add vhost_net to /etc/modules:";
echo vhost_net | sudo tee -a /etc/modules;
