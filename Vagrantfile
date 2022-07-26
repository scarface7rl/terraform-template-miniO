$script = <<-SCRIPT
sudo apt-get update
wget https://dl.min.io/server/minio/release/linux-amd64/minio_20220726005303.0.0_amd64.deb
sudo dpkg -i minio_20220726005303.0.0_amd64.deb
minio --version
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
sudo apt-get install terraform
terraform -help plan
sudo apt-get upgrade -y
sudo rm -rf terraform-template-miniO
git clone --depth 1 'https://github.com/scarface7rl/terraform-template-miniO.git'
cd terraform-template-miniO
export MINIO_ENDPOINT="localhost:9000"
export MINIO_ACCESS_KEY="admin"
export MINIO_SECRET_KEY="admin"
terraform init -upgrade
terraform apply -auto-approve -lock=false
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.provision "shell", inline: $script
  config.vm.network "public_network", bridge: "wlp2s0"
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
end


# sudo minio server /home/vagrant/minio_server --console-address ":9001"