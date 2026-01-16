# 1. Image de base Node.js 18
FROM node:18-alpine

# 2. Définir le répertoire de travail [cite: 24]
WORKDIR /app

# 3. Copier les fichiers de dépendances et installer
COPY package*.json ./
RUN npm install --production

# 4. Copier le reste du code source
COPY . .

# 5. Exposer le port 8080 [cite: 28]
EXPOSE 8080

# 6. Commande pour lancer l'application [cite: 29]
CMD ["node", "index.js"]