#!/bin/bash

# Lista de grupos e usuários para cada grupo
grupo_usuarios=(
  "GRP_ADM carlos maria joao"
  "GRP_VEN debora sebastiana roberto"
  "GRP_SEC josefina amanda rogerio"
)

# Senha comum para todos os usuários
senha_comum="mudar123"

# Loop para criar grupos e usuários
for group_user in "${grupo_usuarios[@]}"; do
  grupo="${grupo_usuarios%% *}"
  usuarios="${groupo_usuarios#* }"

  echo "Criando grupo $grupo..."
  sudo groupadd "$grupo"

  echo "Criando usuários do grupo $grupo..."
  for usuario in $usuarios; do
    echo "Criando usuário $usuario..."
    sudo useradd -m -G "$grupo" "$usuario"
    echo "$usario:$senha_comum" | sudo chpasswd
    echo "Forçando troca de senha para $usuario no próximo login..."
    sudo passwd -e "$usuario"
  done
done

# Definir permissões e proprietários dos diretórios
echo "Definindo permissões e proprietários..."
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

sudo chown root:root /publico
sudo chown root:root /adm
sudo chown root:root /ven
sudo chown root:root /sec

sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

sudo chown :GRP_ADM /adm
sudo chown :GRP_VEN /ven
sudo chown :GRP_SEC /sec

echo "Configuração concluída!"
