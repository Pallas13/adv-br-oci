#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
sudo apt update
sudo apt upgrade
sudo apt install curl

# Instalar Adv-Br
## INSTALAR PACOTES ADICIONAIS ##
# Instalar Safesign
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_safesign.sh | sh

# Instalar SafeNet
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_safenet.sh | sh

# Instalar Java (Zulu)
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_java.sh | sh

# Instalar PJeOffice
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_pjeoffice.sh | sh

# Instalar Lacuna Webpki
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_webpki.sh | sh

# Instalar Softplan Websigner
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_websigner.sh | sh

# Instalar PJeCalc
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/instalar_pjecalc.sh | sh

# Configurar tokens no Firefox
curl https://raw.githubusercontent.com/pedrohqb/distrobox-adv-br/refs/heads/main/scripts/configurar_tokens_firefox.sh | sh

