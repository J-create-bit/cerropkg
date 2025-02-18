#!/bin/bash

programa="docker-compose"

# Obtener el idioma del sistema
idioma=$(echo $LANG | cut -d_ -f1)

# Mensajes dependiendo del idioma
if [ "$idioma" == "es" ]; then
    mensaje_instalacion="Instalando $programa..."
    mensaje_final="$programa ha sido instalado correctamente."
elif [ "$idioma" == "en" ]; then
    mensaje_instalacion="Installing $programa..."
    mensaje_final="$programa has been installed successfully."
else
    # Si el idioma no es ni español ni inglés, usar inglés por defecto
    mensaje_instalacion="Installing $programa..."
    mensaje_final="$programa has been installed correctly."
fi

# Mostrar los mensajes
echo "$mensaje_instalacion"
sudo pacman -S --noconfirm "$programa"
echo "$mensaje_final"
