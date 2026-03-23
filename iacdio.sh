#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

echo "Permissoes dos diretorios..."

chown root:GRP_ADM /adm -R
chown root:GRP_VEN /ven -R
chown root:GRP_SEC /sec -R

chmod 770 /adm -R
chmod 770 /ven -R
chmod 770 /sec -R
chmod 777 /publico -R


echo "Finalizado.."
