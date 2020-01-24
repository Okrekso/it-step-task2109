# making confluence executable
cd /vagrant
chmod a+x confluence.bin

# install confluence
(echo o; echo 2; echo ''; echo ''; echo 1; echo y; echo y) | sudo ./confluence.bin

sudo su
cp ./mysqldriver.jar /opt/atlassian/confluence/confluence/WEB-INF/lib
/opt/atlassian/confluence/bin/stop-confluence.sh; /opt/atlassian/confluence/bin/start-confluence.sh
# sudo /etc/init.d/confluence restart -fg
# /opt/atlassian/confluence/bin/start-confluence.sh