#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


useradd -m -s /bin/bash carlos
useradd -m -s /bin/bash maria
useradd -m -s /bin/bash joao
useradd -m -s /bin/bash debora
useradd -m -s /bin/bash sebastiana
useradd -m -s /bin/bash roberto
useradd -m -s /bin/bash josefina
useradd -m -s /bin/bash amanda
useradd -m -s /bin/bash rogerio

usermod -a -G GRP_ADM carlos
usermod -a -G GRP_ADM maria
usermod -a -G GRP_ADM joao
usermod -a -G GRP_VEN debora
usermod -a -G GRP_VEN sebastiana
usermod -a -G GRP_VEN roberto
usermod -a -G GRP_SEC josefina
usermod -a -G GRP_SEC amanda
usermod -a -G GRP_SEC rogerio

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
