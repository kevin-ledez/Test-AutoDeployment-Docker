# Utiliser l'image Node.js pour la phase de build
FROM node:18 AS build

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le package.json et le package-lock.json
COPY package.json ./
COPY package-lock.json ./

# Installer les dépendances
RUN npm install

# Copier le reste de l'application
COPY . .

# Construire l'application Angular
RUN npm run build --prod

# Utiliser une image Nginx pour la phase de production
FROM nginx:alpine

# Copier les fichiers build dans le répertoire de Nginx
COPY --from=build /app/client /usr/share/nginx/html

# Copier le fichier de configuration Nginx personnalisé
COPY nginx.conf /etc/nginx/nginx.conf

# Exposer le port 80
EXPOSE 4200

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
