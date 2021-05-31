#!/bin/bash
#clear
# Sistema de automação de backup em HD externo. 
# Esse sistema respeita o backup das pastas na forma como estão organizadas agora. 
# Caso queira utilizar esse arquivo, você precisa ajustar o código para o seu contexto
# Criado em: Maio de 2021
# Versão: 1.0
# Autor: Leonardo Rocha
echo "----------------------------------------"
echo "#####>>>>   BACKUP DE ARQUIVOS <<<<#####"
echo "----------------------------------------"

#----------------------------------------------
#Variáveis
#----------------------------------------------
echo ""
echo ""
echo "Informe o nome da unidade (HD): "
echo "Atenção: escreva exatamente igual"
read nomeHD
echo ""
echo ""
echo "opções de backup: "
echo ""
echo "[ 1  ] Para backup dos Área de Trabalho"
echo "[ 2  ] Para backup dos Documentos"
echo "[ 3  ] Para backup dos Desenvolvimento"
echo "[ 4  ] Para backup dos Downloads"
echo "[ 5  ] Para backup dos Imagens"
echo "[ 6  ] Para backup dos KVM"
echo "[ 7  ] Para backup dos MEGA"
echo "[ 8  ] Para backup dos Modelos"
echo "[ 9  ] Para backup dos Música"
echo "[ 10 ] Para backup dos SpiderOak"
echo "[ 11 ] Para backup dos Vídeos"
echo "[ 12 ] Para backup dos VirtualBox"
echo "[ 13 ] Para backup dos Voluntário"
echo "[ 14 ] Para backup de TUDO"
echo "[ 0  ] Para Sair"
echo -n "Escolha a opção desejada: "
read op
uuid=600231683A15501B
if lsblk -f | grep -wq $uuid; then
  echo "HD Conectado com sucesso!"
    if [ $op -eq 1 ]; then
      echo "Backup da Área de trabalho iniciando"
      sudo rsync  -CrAahvzp --delete /home/leonardo/Área\ de\ trabalho/ /media/leonardo/leonardo/Área\ de\ trabalho/
    elif [ $op -eq 2 ]; then
      echo "Backup dos Documentos iniciando"
      sudo rsync  -CrAahvzp --delete /home/leonardo/Documentos/ /media/leonardo/leonardo/Documentos/
    elif [ $op -eq 3 ]; then
      echo "Backup de Desenvolvimento iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Desenvolvimento/ /media/leonardo/leonardo/Desenvolvimento/
    elif [ $op -eq 4 ]; then
      echo "Backup de Downloads iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Downloads/ /media/leonardo/leonardo/Downloads/
    elif [ $op -eq 5 ]; then
      echo "Backup de Imagens iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Imagens/ /media/leonardo/leonardo/Imagens/
    elif [ $op -eq 6 ]; then
      echo "Backup de KVM iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/KVM/ /media/leonardo/leonardo/KVM/
    elif [ $op -eq 7 ]; then
      echo "Backup de MEGA iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/MEGA/ /media/leonardo/leonardo/MEGA/
    elif [ $op -eq 8 ]; then
      echo "Backup de Modelos iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Modelos/ /media/leonardo/leonardo/Modelos/
    elif [ $op -eq 9 ]; then
      echo "Backup de Músicas iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Músicas/ /media/leonardo/leonardo/Músicas/
    elif [ $op -eq 10 ]; then
      echo "Backup de SpiderOak iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/SpiderOak/ /media/leonardo/leonardo/SpiderOak/
    elif [ $op -eq 11 ]; then
      echo "Backup de Vídeos iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Vídeos/ /media/leonardo/leonardo/Vídeos/
    elif [ $op -eq 12 ]; then
      echo "Backup de VirtualBox iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/VirtualBox/ /media/leonardo/leonardo/VirtualBox/
    elif [ $op -eq 13 ]; then
      echo "Backup de Voluntário iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/Voluntário/ /media/leonardo/leonardo/Voluntário/
    elif [ $op -eq 14 ]; then
      echo "Backup de TUDO iniciando"
      rsync  -CrAahvzp --delete /home/leonardo/ /media/leonardo/leonardo/
    elif [ $op -eq 0 ]; then
      echo "Saindo do sistema..."
      exit;
    else
      echo "OPÇÃO INDISPONÍVEL, TENTE NOVAMENTE"
    fi
else
  echo "HD não está conectado. Verifique por favor!"
fi
