#!/bin/bash

# Couleurs pour le style dans le terminal
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m'

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
    echo -e "${RED}Erreur : Aucun fichier de log fourni.${NC}"
    echo "Usage: ./analyzer.sh "
    exit 1
fi

echo -e "${CYAN}[*] Extraction des 20 dernières lignes de $LOG_FILE...${NC}"
LOG_CONTENT=$(tail -n 20 "$LOG_FILE")

echo -e "${CYAN}[*] Réveil de l'Intelligence Artificielle (Mistral Local)...${NC}"
echo -e "Analyse de la racine du problème en cours...\n"

# Le Prompt de l'Architecte
PROMPT="Tu es un ingénieur SRE (Site Reliability Engineering) de niveau expert. 
Analyse ce log d'erreur système. 
1. Explique la root cause (cause racine) en une seule phrase courte. 
2. Donne UNIQUEMENT la commande Linux (Bash) exacte pour résoudre ou diagnostiquer ce problème, dans un bloc de code. 
Voici le log : $LOG_CONTENT"

# Envoi au moteur Ollama local
ollama run mistral "$PROMPT"

echo -e "\n${GREEN}[✔] Analyse terminée.${NC}"
