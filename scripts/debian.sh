#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
sudo apt update
sudo apt upgrade
sudo apt install curl -y
sudo apt install $(cat ./debian.packages | tr "\n" " ") -y


# Instalar Adv-Br
## INSTALAR PACOTES ADICIONAIS ##
# Instalar Safesign
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_safesign.sh
# Instalar SafeNet
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_safenet.sh
# Instalar Java (Zulu)
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_java.sh
# Instalar PJeOffice
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_pjeoffice.sh 
# Instalar Lacuna Webpki
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_webpki.sh 
# Instalar Softplan Websigner
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_websigner.sh 
# Instalar PJeCalc
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_pjecalc.sh 
# Configurar tokens no Firefox
wget https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/configurar_tokens_firefox.sh 

chmod +x instalar_*.sh
chmod +x configurar_tokens_firefox.sh
./instalar_safesign.sh
./instalar_safenet.sh
./instalar_java.sh
./instalar_pjeoffice.sh 
./instalar_webpki.sh 
./instalar_websigner.sh
./instalar_pjecalc.sh
./configurar_tokens_firefox.sh 

rm instalar*.sh
rm configurar_tokens_firefox.sh 
