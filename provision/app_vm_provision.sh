setenforce 0
systemctl start nginx
# ssh configuration
cp /vagrant/yoko-ssh-docker_id_rsa /tmp/ssh_key
chmod 400 /tmp/ssh_key

# ssh -i /tmp/ssh_key -p 4422 root@yoko.ukrtux.com

# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbDg/3wjZ1Q2KqHsjqkLyyGBNsIMP5ALubkUmRQipNC1zgUi0w4yRvh6l2FTv1eY4umGiO+V4V3fp2rAQSbsAWb4HYczgOe+/OnJdo5/qxyVDVOZEgxbB8c3yeBp/X7AlhizMYk1ANDUJWwE6fp08N+U94FasMgZKfRKBA8FAo+qhDQIMicQUj8y0AMNDCPpycMZ1jyDG8jNd94mwrewr5xntf3hSTaxz7EPxvpHsqYM6hdsoNRF1SVmwML/N/0QVdfDhQJfBmS9w26g0MWH2V3bVZllD+CQZTmzxKj3oGc+1JHqHeBZUnAWyVZM4UMj3l1lN8X/JgOJ2bXD4IN/KB root@02b7eb2dbaba
ssh -i /etc/my_key -R 14422:localhost:443 -p 4422 root@yoko.ukrtux.com

# ssh -i /etc/my_key -L192.168.33.11:8080:localhost:14422 -p 4422 root@yoko.ukrtux.com