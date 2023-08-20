#!/bin/bash

# Criação dos diretórios
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Definição de proprietário
echo "Definindo proprietário..."
chown root:root /publico
chown root:root /adm
chown root:root /ven
chown root:root /sec

# Definição de permissões
echo "Definindo permissões..."
chmod 777 /publico

# Criação dos grupos
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação dos usuários
echo "Criando usuários..."
useradd -m -G GRP_ADM carlos
useradd -m -G GRP_ADM maria
useradd -m -G GRP_ADM joao

useradd -m -G GRP_VEN debora
useradd -m -G GRP_VEN sebastiana
useradd -m -G GRP_VEN roberto

useradd -m -G GRP_SEC josefina
useradd -m -G GRP_SEC amanda
useradd -m -G GRP_SEC rogerio

# Definição de permissões nos diretórios dos grupos
echo "Definindo permissões nos diretórios dos grupos..."
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Definição de permissões por grupo
echo "Definindo permissões por grupo..."
chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

echo "Configuração concluída!"
