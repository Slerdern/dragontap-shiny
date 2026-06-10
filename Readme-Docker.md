Groupe de Matteo et Gweltaz

Stack choisies : 

Back : innkeeper-java

Front : board-react

Restart policies : Nous avons choisi d'utiliser les restarts policies "unless stopped" pour nos conteneurs, ce qui signifie que les conteneurs redémarreront automatiquement en cas de plantage ou d'arrêt inattendu, sauf si nous les arrêtons manuellement. Cela garantit une meilleure résilience de notre application et minimise les temps d'arrêt.

Healtchecks : Nous avons implemente un healthcheck pour notre conteneur de base de données PostgreSQL. Le healthcheck utilise la commande "pg_isready" pour vérifier si la base de données est prête à accepter des connexions. Si le healthcheck échoue, Docker considérera le conteneur comme non sain et pourra prendre des mesures en conséquence, comme redémarrer le conteneur ou alerter les administrateurs.

Pour initialiser le projet : 

Solution 1: 

1- Renommer les .env.example en .env
2- Ouvrir un terminal et lancer la commande suivante : docker compose up

Solution 2:

Lancer un terminal bash et executer le script setup.bash (permets de remplacer les .env)

Fonctionnement du projet :

Nos difficultes : 

