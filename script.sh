#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_ADM
useradd jose -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_VEN 
useradd  roberto -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -p -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_SEC

chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec	
chmod 777 /publico
