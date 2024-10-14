#!/bin/bash

# Demander à l'utilisateur d'entrer le nom du processus
read -p "Entrez le nom du processus à vérifier (sans .exe, par exemple : vim) : " process_name

# Afficher le processus recherché pour débogage
echo "Recherche du processus : $process_name"

# Vérifier si le processus est en cours d'exécution
if ps -ef | grep -q "[${process_name:0:1}]${process_name:1}"; then
    echo "$process_name est en cours d'exécution."
else
    echo "$process_name n'est pas en cours d'exécution."
fi

# Afficher la liste des processus pour débogage
echo "Liste des processus actuels :"
ps -ef

