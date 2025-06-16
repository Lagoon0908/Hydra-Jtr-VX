🔐 Projet de Formation Pentest : Hydra + JohnTheRipper + Wordlist Personnalisée
🎯 Objectif du Projet
L'objectif principal de ce projet de formation en pentest était de fusionner Hydra et John The Ripper (JtR) dans un workflow simple et automatisé, tout en y intégrant un générateur de wordlists personnalisées, adaptables en fonction de la cible à attaquer.

Cet objectif a été atteint avec succès en créant une solution qui :

Génère dynamiquement une wordlist selon des critères définis (nom de la cible, contexte, habitudes connues…)

L'utilise avec Hydra pour des attaques par force brute sur un service SSH

Bascule automatiquement vers John The Ripper pour améliorer l'efficacité si des hash sont récupérés

🛠️ Technologies et Matériel Utilisés
Raspberry Pi 4 : Kali Linux ARM, utilisé comme machine d’attaque

Raspberry Pi 3 : Serveur SSH (OpenSSH) avec plusieurs utilisateurs simulés

Hydra : Outil de brute-force pour tester des accès SSH

John The Ripper : Utilisé pour craquer des hash et affiner les attaques

Python/Bash : Pour automatiser la génération de wordlist et les phases d’attaque

⚙️ Fonctionnement du Projet
1. Générateur de Wordlist
Un script permet de générer une wordlist sur mesure en se basant sur :

Le nom de la cible

Des mots-clés fréquents (nom d’entreprise, année, etc.)

Des variantes typiques de mots de passe faibles (admin, password123, qwerty, etc.)

2. Attaque par Hydra
Hydra est ensuite utilisé pour :

Tenter une attaque SSH sur les utilisateurs créés sur le serveur cible

Démontrer l’efficacité de l'attaque face à des mots de passe faibles ou mal choisis

Exemple de succès dans ce projet :
Le mot de passe @dmin123, fréquemment utilisé par des administrateurs peu rigoureux, a été forcé rapidement grâce à Hydra.

3. Passage à John The Ripper
Dans un scénario élargi (non utilisé ici), les hashs de mots de passe peuvent être extraits (par exemple via /etc/shadow) et testés via John The Ripper pour un craquage plus poussé.

✅ Cadre Légal
Toutes les attaques et tests ont été réalisés en environnement local et contrôlé, dans le respect strict du cadre légal :

Aucun système tiers n’a été ciblé

Les utilisateurs et services vulnérables ont été créés spécifiquement pour ce projet de test

📌 Ce que ce projet démontre
La fragilité des mots de passe faibles, même face à des outils classiques comme Hydra

L’importance d’une wordlist bien construite, contextuelle et ciblée

La facilité avec laquelle une machine basique (Raspberry Pi) peut être utilisée pour simuler un pentest réaliste

La nécessité pour les administrateurs système de mettre en place des mots de passe complexes et des protections contre le brute-force

📂 Structure du Projet (exemple)
bash
Copier
Modifier
/pentest-project/
│
├── generate_wordlist.py      # Générateur de wordlist personnalisée
├── attack_with_hydra.sh      # Script d'attaque automatisée avec Hydra
├── sample_wordlist.txt       # Exemple de wordlist générée
├── README.md                 # Ce fichier
🚀 Pistes d'amélioration
Ajout d’une interface web simple pour lancer les tests

Intégration de Hashcat pour le craquage GPU

Simulation de pare-feu/IDS pour observer les réactions aux attaques
