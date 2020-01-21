echo "======================="
echo "removing all previous machines"
echo "======================="
docker rm $(docker ps -a -q)

echo "======================="
echo "running docker mysql container"
echo "======================="
docker run --name=mysql -p 3306:3306 -e MYSQL_ROOT_PASSSWORD="root" -d mysql/mysql-server:5.7
# get generated password
docker logs mysql | grep -E "GENERATED ROOT PASSWORD" > /tmp/mysqlpass.txt
# enter mysql
# sudo docker exec -it mysql mysql -uroot -p

# ===============================================================
# this lines is not gonna strat because of mysql start up take a bit time
# just copy and paste it in your ssh console
# ===============================================================
pass="$(docker logs mysql | grep -E "GENERATED ROOT PASSWORD")"; 
pass="$(cut -d":" -f2 <<<$pass)"; echo $pass > /tmp/mysqlpass.txt;
pass="$(cut -d" " -f2 <<<$pass)"; echo $pass > /tmp/mysqlpass.txt;


# docker exec -it mysql mysql -uroot -p$pass --connect-expired-password
# ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
# CREATE DATABASE confdb CHARACTER SET utf8 COLLATE utf8_bin;
# GRANT ALL PRIVILEGES ON confdb.* TO 'confuser'@'192.168.33.22' IDENTIFIED BY 'conf';
# exit;