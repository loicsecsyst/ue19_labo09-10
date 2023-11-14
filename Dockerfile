# Utilisez l'image officielle Python comme base
FROM python:3.8-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY app.py /app/
COPY requirement.txt /app/

# Installez les dépendances
RUN pip install --no-cache-dir -r requirement.txt

# Commande pour exécuter le script lorsque le conteneur démarre
CMD ["python", "app.py"]
