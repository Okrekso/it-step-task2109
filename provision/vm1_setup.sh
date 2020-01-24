sudo su
yum -y install epel-release
yum -y install nginx
yum -y install vim
yum -y install openssl

cd /etc/nginx
# openssl genrsa -des3 -passout pass:x -out keypair.key 2048
# mkdir /etc/ssl
# mkdir /etc/ssl/private
(echo UA; echo "Lviv obl"; echo "Lviv"; echo Devops; echo devops; echo oskerko-server; echo "semikoseker@gmail.com"; echo conf; echo devopsoskerko) | sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt
setenforce 0
# openssl genrsa -out /etc/ssl/private/nginx-selfsigned.key 2048
# (echo UA; echo "Lviv obl"; echo "Lviv"; echo Devops; echo devops; echo oskerko-server; echo "semikoseker@gmail.com"; echo conf; echo devopsoskerko) | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/private/nginx-selfsigned.crt
# (echo UA; echo "Lviv obl"; echo "Lviv"; echo Devops; echo devops; echo oskerko-server; echo "semikoseker@gmail.com"; echo conf; echo devopsoskerko) | openssl req -new -sha256 -key private.key -out csr.csr
# sudo mkdir /etc/httpd/
# sudo mkdir /etc/httpd/httpscertificate

# openssl rsa -passin pass:x -in keypair.key -out /etc/httpd/httpscertificate/192.168.33.11.key
# echo y | rm keypair.key
# (echo UA; echo "Lviv obl"; echo "Lviv"; echo Devops; echo devops; echo oskerko-server; echo "semikoseker@gmail.com"; echo conf; echo devopsoskerko) | openssl req -new -key /etc/httpd/httpscertificate/192.168.33.11.key -out /etc/httpd/httpscertificate/192.168.33.11.csr
# openssl x509 -req -days 365 -in /etc/httpd/httpscertificate/192.168.33.11.csr -signkey /etc/httpd/httpscertificate/192.168.33.11.key -out /etc/httpd/httpscertificate/192.168.33.11.crt

# service nginx start

# set up nginx server
# cp /vagrant/provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
# ssudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/nginx.conf
# chmod 644 /etc/nginx/sites-available/site.conf
# ln -sf /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
# sudo rm /etc/nginx/sites-enabled/default
# clean /var/www
# sudo rm -Rf /var/www

# symlink /var/www => /vagrant
# ln -sf /vagrant /var/www
# service nginx restart