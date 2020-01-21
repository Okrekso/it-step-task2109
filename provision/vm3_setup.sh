# docker part
# =============================================
sudo apt-get update
# check and delete old version of dockers

echo "\n======================="
echo "check and delete old version of dockers"
echo "=======================\n"
sudo apt-get -y remove docker docker-engine docker.io
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