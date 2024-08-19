sudo su
# Install NFS client
sudo apt install nfs-common -y
echo "192.168.50.10:/srv/share/ /mnt nfs vers=3,noauto,x-systemd.automount 0 0" >> /etc/fstab

sudo systemctl daemon-reload
sudo systemctl restart remote-fs.target
sudo mount | grep mnt
sudo touch /mnt/upload/nfsc_test