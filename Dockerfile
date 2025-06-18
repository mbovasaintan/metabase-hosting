FROM metabase/metabase:latest

# Copier ta base dans le container
COPY metabase-data/metabase.db.mv.db /metabase-data/metabase.db.mv.db

# Définir la variable d’environnement
ENV MB_DB_FILE=/metabase-data/metabase.db.mv.db

# Exposer le bon port
EXPOSE 3000

# Lancer Metabase
CMD ["java", "-jar", "metabase.jar"]