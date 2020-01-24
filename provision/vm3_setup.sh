# docker part
# =============================================
# sudo apt-get update
# check and delete old version of dockers

echo "\n======================="
echo "check and delete old version of dockers"
echo "=======================\n"
# sudo apt-get -y remove docker docker-engine docker.io
# install new version of docker

echo "======================="
echo "installing docker..."
echo "======================="
sudo apt -y install docker.io
sudo apt -y install grep
# startup setup
sudo usermod -a -G docker vagrant
sudo systemctl start docker
sudo systemctl enable docker
# check success

echo "======================="
echo "check docker version..."
echo "======================="
docker --version

echo "======================="
echo "pulling mysql image..."
echo "======================="
docker pull mysql/mysql-server:5.7
# =============================================

echo "======================="
echo "removing all previous machines"
echo "======================="
docker rm $(docker ps -a -q)

echo "======================="
echo "running docker mysql container"
echo "======================="
# docker run --name=mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD="root" -d mysql/mysql-server:5.7
# docker build https://github.com/mysql/mysql-docker.git
cd /vagrant/mysql-docker/5.7
docker build --tag "customysql:latest" .
docker run --name=mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD="root" -d customysql:latest