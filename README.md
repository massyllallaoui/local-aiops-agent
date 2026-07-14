##  Vision du projet
L'objectif de ce projet est de réduire le MTTR (Mean Time To Recovery) lors des incidents d'infrastructure, en utilisant une Intelligence Artificielle **locale et souveraine**.

Plutôt que d'envoyer des logs d'entreprise sensibles sur le cloud public (ChatGPT), cet outil utilise le modèle **Mistral via Ollama** exécuté localement en ligne de commande pour diagnostiquer les pannes de serveurs (Nginx, Docker, MySQL, etc.) de manière sécurisée et autonome.

##  Architecture & Technologies
- **Langage :** Bash Scripting (Posix compliant)
- **Moteur IA :** Ollama (Inférence locale)
- **Modèle (LLM) :** Mistral (7B)
- **Environnement :** macOS (M3) / Linux

##  Utilisation
```bash
# Rendre le script exécutable
chmod +x analyzer.sh

# Analyser un crash système (ex: MySQL)
./analyzer.sh mysql-crash.log
