# Étape 1 : Utiliser une image Nginx
FROM nginx:1.27.3-perl

# Étape 2 : Copier le fichier de configuration Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers Angular générés dans le dossier HTML de Nginx
COPY dist/pasino/browser /usr/share/nginx/html

# Exposer le port 80 pour accéder à l'application
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]