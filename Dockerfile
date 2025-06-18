FROM metabase/metabase

# Crée le dossier de données
RUN mkdir -p /metabase-data

# Copie la base de données dans le conteneur
COPY metabase-data/metabase.db.mv.db /metabase-data/metabase.db.mv.db

# Définir la variable d'environnement pour pointer vers cette base
ENV MB_DB_FILE=/metabase-data/metabase.db

# Définir le port attendu (Render le détectera si exposé)
ENV PORT=3000

# Exposer le port Metabase
EXPOSE 3000
