echo "======================="
echo "removing all previous machines"
echo "======================="
docker rm $(docker ps -a -q)

echo "======================="
echo "running docker mysql container"
echo "======================="
docker run --name=mysql -p 3306:3306 -d mysql/mysql-server:5.7