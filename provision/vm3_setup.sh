# docker part
# =============================================
sudo apt-get update
# check and delete old version of dockers
sudo apt-get -y remove docker docker-engine docker.io
# install new version of docker
sudo apt -y install docker.io
# startup setup
sudo systemctl start docker
sudo systemctl enable docker
# check success
docker --version
usermod -a -G docker vagrant
# =============================================