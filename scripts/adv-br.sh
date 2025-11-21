#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
apt update
apt upgrade
apt install curl sudo wget -y
apt install $(cat ./adv-br.packages | tr "\n" " ") -y

curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_safesign.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_safenet.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_serproid.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/scripts-ubuntu-24-04/instalar_assinadorserpro.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_java.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_pjeoffice.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_webpki.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_websigner.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/instalar_certisign.sh | sh 
curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/scripts-ubuntu-24-04/instalar-firefox.sh | sh 
#curl https://raw.githubusercontent.com/Pallas13/distrobox-adv-br/refs/heads/main/scripts/scripts-ubuntu-24-04/configurar_tokens_firefox.sh | sh

