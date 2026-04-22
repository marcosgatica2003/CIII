#!/bin/bash
PRIMARY_DIR_CAPTURES="$HOME/borescope/software/captures/images/"
FALLBACK_DIR_CAPTURES="$HOME/.config/borescope/captures/images/"
TARGET_DIRECTORY="$HOME/Imágenes"

#Check if scp is not available
if ! command -v scp &>/dev/null; then
    echo "scp command is not available"
    exit 1
fi

#Check if PRIMARY_DIR_CAPTURES exists
if [[ -d "$PRIMARY_DIR_CAPTURES" ]]; then
    CAP_DIR="$PRIMARY_DIR_CAPTURES"
else
    echo "$PRIMARY_DIR_CAPTURES doesnt exists, using fallback"
    CAP_DIR="$FALLBACK_DIR_CAPTURES"
fi

if ! ls "$CAP_DIR"/*.png &>/dev/null; then
    echo "No images in $CAP_DIR"
    exit 1
fi

read -rp "Introducir usuario destino: " TARGET_USER
read -rp "Introducir IP computadora destino: " TARGET_IP_ADDRESS

scp -r "$CAP_DIR/*.png" "$TARGET_USER"@"$TARGET_IP_ADDRESS":"$TARGET_DIRECTORY"
