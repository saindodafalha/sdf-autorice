#!/bin/bash
# SDF Rice 16/12/2024

# instala meu rice automaticamente.
# deve ser rodado na tty de um Debian 
# 12 recém instalado e sem DE.
# instale primeiro as dependências.

# repositório remoto 
REPO_ROOT='https://raw.githubusercontent.com/saindodafalha/sdf-autorice/refs/heads/master';

# prepara o ambiente
export RICE="$HOME/.rice";
export PATH="$PATH:$RICE/bin";
mkdir -p "$RICE/bin";

# instala o ambiente suckless e seus patches
echo 'Instalando o ambiente suckless...';
wget $REPO_ROOT/bin/suckless-installer.sh.txt -O $RICE/bin/suckless-installer.sh &> /dev/null; 
chmod u+x $RICE/bin/suckless-installer.sh;
$RICE/bin/suckless-installer.sh &> suckless-installer.log;

# instala os meu rice
echo 'Instalando o meu rice...';
wget $REPO_ROOT/bin/rice-installer.sh.txt -O $RICE/bin/rice-installer.sh &> /dev/null;
chmod u+x $RICE/bin/rice-installer.sh;
$RICE/bin/rice-installer.sh &> rice-installer.log;

# move os logs de instalação
mv suckless-installer.log rice-installer.log $RICE/log;

# finaliza
echo 'Instalação finalizada.';
echo 'Logs de instalação suckless-install.log e rice-install.log gerados em $RICE/log.';
echo 'Rode `source ~/.profile && startx` para iniciar o ambiente gráfico.';
