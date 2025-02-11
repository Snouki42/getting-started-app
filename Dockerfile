FROM python:alpine

WORKDIR /app
COPY requirements.txt .

# Installer les dépendances nécessaires pour Alpine
RUN apk add --no-cache python3-dev py3-pip build-base

# Mettre à jour pip
RUN pip install --upgrade pip

# Installer les dépendances Python
RUN pip install -r requirements.txt

# Continuez avec le reste de votre Dockerfile
