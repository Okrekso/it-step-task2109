docker rm $(docker ps -a -q)

docker run --name mysqlserver -p 80:80 -d mysqlserver -e MYSQL_ROOT_PASSWORD=12345