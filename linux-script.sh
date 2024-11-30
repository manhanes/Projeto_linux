#!/bin/bash

# Definindo os arrays
dirs=("publico" "adm" "ven" "sec")
grps=("GRP_ADM" "GRP_VEN" "GRP_SEC")
users=("carlos" "maria" "joao" "debora" "sebastiana" "roberto" "josefina" "amanda" "rogerio")

# Criando os diretórios no /home e alterando o dono para root
for dir in "${dirs[@]}"; do
    mkdir -p "/home/$dir"
    chown root:root "/home/$dir"
    chmod 777 "/home/$dir"  # Todos têm acesso total inicialmente
done

# Criando os grupos
for grp in "${grps[@]}"; do
    groupadd "$grp"
done

# Criando os usuários e adicionando aos grupos respectivos
useradd -m -G GRP_ADM carlos
useradd -m -G GRP_ADM maria
useradd -m -G GRP_ADM joao

useradd -m -G GRP_VEN debora
useradd -m -G GRP_VEN sebastiana
useradd -m -G GRP_VEN roberto

useradd -m -G GRP_SEC josefina
useradd -m -G GRP_SEC amanda
useradd -m -G GRP_SEC rogerio

# Configurando permissões para os diretórios
chmod 770 /home/adm
chown :GRP_ADM /home/adm

chmod 770 /home/ven
chown :GRP_VEN /home/ven

chmod 770 /home/sec
chown :GRP_SEC /home/sec

# Configurando permissões para o diretório publico
chmod 777 /home/publico
