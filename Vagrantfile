$script = <<-SCRIPT
sudo apt-get update
wget https://dl.min.io/server/minio/release/linux-amd64/minio_20220724170931.0.0_amd64.deb
sudo dpkg -i minio_20220724170931.0.0_amd64.deb
MINIO_ROOT_USER=admin MINIO_ROOT_PASSWORD=password minio server /mnt/data --console-address ":9001"
minio --version
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform
terraform -help plan
sudo apt-get upgrade -y
git clone --depth 1 'https://github.com/scarface7rl/terraform-template-miniO.git' && rm -rf REPO/.git
cd terraform-template-miniO
terraform init
terraform apply -auto-approve 
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.provision "shell", inline: $script
  config.vm.network "public_network", bridge: "wlp2s0"
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
end


# sudo minio server /home/vagrant/minio_server --console-address ":9001"