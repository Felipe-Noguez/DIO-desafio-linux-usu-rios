#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd jessica -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd claudio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd manoela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd silvio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd jorge -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
