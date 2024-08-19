sudo su
# Install NFS server
sudo apt install nfs-kernel-server -y
# Create directory
sudo mkdir -p /srv/share/upload 
sudo chown -R nobody:nogroup /srv/share
sudo chmod 0777 /srv/share/upload
sudo cat << EOF > /etc/exports 
/srv/share 192.168.50.11/32(rw,sync,root_squash)
EOF
# Export directory
sudo exportfs -r
exportfs -s 
touch /srv/share/upload/nfss_test