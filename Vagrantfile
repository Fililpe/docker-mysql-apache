Vagrant.configure("2") do |config|
  # Ubuntu 22.04 com suporte a libvirt/KVM
  config.vm.box = "generic/ubuntu2204"
  config.vm.hostname = "docker-vm"

  # IP fixo para acessar os containers a partir do host
  config.vm.network "private_network", ip: "192.168.56.10"

  # Copia a pasta do projeto para /vagrant dentro da VM
  config.vm.synced_folder ".", "/vagrant", type: "rsync",
    rsync__exclude: [".git/", ".vagrant/"]

  # Recursos pedidos na atividade: 2 GB de RAM e 1 CPU
  config.vm.provider :libvirt do |lv|
    lv.memory = 2048
    lv.cpus = 1
    # Usa o libvirt do sistema, que consegue criar a rede com IP fixo
    lv.qemu_use_session = false
  end

  # Instala o Docker na primeira subida
  config.vm.provision "shell", path: "scripts/setup-docker.sh"
end
