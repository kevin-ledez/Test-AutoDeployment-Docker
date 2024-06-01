# Utiliser l'image Node.js pour la phase de build
FROM node:18 AS build

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Exposer le port 80
EXPOSE 4200
