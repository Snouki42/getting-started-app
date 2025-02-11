#!/bin/bash

# Lire le numéro de version actuel
CURRENT_VERSION=$(cat version.txt)

# Incrémenter le numéro de patch
IFS='.' read -r -a VERSION_PARTS <<< "$CURRENT_VERSION"
MAJOR=${VERSION_PARTS[0]}
MINOR=${VERSION_PARTS[1]}
PATCH=${VERSION_PARTS[2]}

# Incrémenter le numéro de patch
NEW_PATCH=$((PATCH + 1))

# Mettre à jour le fichier de version
NEW_VERSION="$MAJOR.$MINOR.$NEW_PATCH"
echo "$NEW_VERSION" > version.txt

# Afficher la nouvelle version
echo "New version: $NEW_VERSION"
