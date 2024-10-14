#!/bin/bash

# Demander à l'utilisateur de saisir le nom du processus
read -p "Entrez le nom du processus à vérifier : " process_name

# Vérifier si le processus est en cours d'exécution
if pgrep -x "$process_name" > /dev/null
then
    echo "Le processus '$process_name' est en cours d'exécution."
else
    echo "Le processus '$process_name' n'est pas en cours d'exécution."
fi

