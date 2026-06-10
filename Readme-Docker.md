# Projet Docker — Matteo & Gweltaz

## Stack technique

| Couche    | Technologie      |
|-----------|------------------|
| Backend   | `innkeeper-java` |
| Frontend  | `board-react`    |
 
---
## Initialisation du projet

### Option 1 — Script automatique *(recommandé)*

```bash
bash setup.bash
```

### Option 2 — Démarrage manuel

1. Renommer les fichiers `.env.example` en `.env`
2. Lancer les conteneurs :
```bash
docker compose up -d --build
```
---

## Configuration Docker

### Restart policies

La politique `unless-stopped` est appliquée sur l'ensemble des conteneurs: Tout conteneur arrêté de manière inattendue redémarre automatiquement, seul un arrêt manuel y fait exception. Cette configuration assure la continuité de service sans intervention humaine.

### Healthchecks

Le conteneur **PostgreSQL** est surveillé via la commande `pg_isready`, qui sonde en continu la disponibilité de la base de données. Tant que celle-ci ne répond pas correctement, Docker considère le conteneur comme *unhealthy* et bloque les dépendants jusqu'au rétablissement complet.

---

## Difficultés rencontrées

#### Dockerfile Java

- **Build préalable requis** : penser à compiler le projet avant de construire l'image, afin que le répertoire `target/` existe.
- **Gestion des permissions** : ne pas oublier d'ajouter la commande `addGroup` dans le Dockerfile pour la création du groupe utilisateur.
#### Configuration Nginx

- **Ne pas ajouter de `/` après `proxy_pass http://innkeeper`** — cela provoque une réécriture du chemin et génère une duplication : `/api/` devient `/api/api/`.