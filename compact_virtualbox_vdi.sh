sudo dd if=/dev/zero of=/free
ls -alh /free
sudo rm -f /free

VBoxManage modifyhd UbuntuServer.vdi --compact
