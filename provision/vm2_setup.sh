# making confluence executable
cd /vagrant
chmod a+x confluence.bin

# install confluence
(echo o; echo 2; echo ''; echo ''; echo 1; echo y; echo n) | sudo ./confluence.bin