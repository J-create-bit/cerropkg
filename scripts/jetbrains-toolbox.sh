#!/bin/bash

programa="jetbrains-toolbox "

idioma=$(echo $LANG | cut -d_ -f1)

if [ "$idioma" == "es" ]; then
    mensaje_instalacion="Instalando $programa..."
    mensaje_final="$programa ha sido instalado correctamente."
elif [ "$idioma" == "en" ]; then
    mensaje_instalacion="Installing $programa..."
    mensaje_final="$programa has been installed successfully."
else
    mensaje_instalacion="Installing $programa..."
    mensaje_final="$programa has been installed correctly."
fi

echo "$mensaje_instalacion"
yay -S --noconfirm "$programa"
echo "$mensaje_final"
