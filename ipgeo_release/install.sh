#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"

echo "📦 Installazione IPGeo in $INSTALL_DIR"

# Crea la cartella se non esiste
mkdir -p "$INSTALL_DIR"

# Copia il binario
cp ipgeo "$INSTALL_DIR/ipgeo"
chmod +x "$INSTALL_DIR/ipgeo"

# Verifica se è nel PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "⚠️  $INSTALL_DIR non è nel tuo PATH."
    echo "👉 Aggiungilo al tuo ~/.bashrc o ~/.zshrc con:"
    echo "    export PATH=\"\$HOME/.local/bin:\$PATH\""
fi

echo "✅ Installazione completata! Avvia con: ipgeo"
