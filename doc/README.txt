Estrutura do diretório .rice:
.rice
   | api    scripts que criam manipulam *.dat em $RICE/var
   | bin    binários e scripts executáveis
   | doc    documentação
   | env    arquivos *.env "sourceáveis"
   | etc    hardlinks para arquivos de configuração
   | log    logs gerados por scripts do rice
   | src    código fonte de alguns binários
   | var    *.dat usados por scripts do ambiente
   | wal    wallpapers 


api    scripts que criam manipulam *.dat em $RICE/var
   scripts curtos que escrevem dados em $RICE/var/*.dat
   por exemplo, scripts que consomem apis e guardam o 
   resultado nos *.dat para serem usados por outros
   scripts de ambiente.

bin    binários e scripts executáveis
   executáveis, sejam eles binários grandes como o dwm,
   scripts de ambiente como aquele que gera o conteúdo
   do slstatus, ou apenas scripts utilitários de linha
   de comando. Alguns são softlinks para os binários 
   em $RICE/src.

doc    documentação
   explicação da estrutura e das convenções

env    arquivos *.env "sourceáveis"
   arquivos que serão carregados no .bashrc ou .profile
   para definir aliases e variáveis de ambiente.

etc    hardlinks para arquivos de configuração
   hardlinks para configfiles que podem estar em qualquer
   lugar do sistema, mas são reunidos aqui por praticidade.

log    logs gerados por scripts do rice
   diretório para guardar logs gerados pelos scripts do
   ambiente. Exemplo: um script pode monitorar a 
   temperatura atual e salvar em $RICE/log.

src    código fonte de alguns binários
   códigos fonte, especialmente dos softwares do suckless.

var    *.dat usados por scripts de ambiente
   arquivos *.dat que guardam dados variáveis, gerados por
   scripts de ambiente. Exemplo: bitcoin-price.dat que pode
   ser usado pelo script da barra de status, etc.

wal    wallpapers 
   diretório para guardar os wallpapers.

EXTRA:
   configurar o dmenu e o dwm para suportar os emojis
      veja: https://www.youtube.com/watch?v=MjDkSm60RiQ
   para o slock funcionar:
      sudo chown root:root ./slock
      sudo chmod u+s ./slock
