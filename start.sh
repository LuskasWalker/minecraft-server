#!/bin/bash

# Baixa o JAR se não existir ainda
if [ ! -f server.jar ]; then
    echo "Baixando server.jar..."
    curl -o server.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/132/downloads/paper-1.20.1-132.jar
fi

# Inicia o servidor
echo "Iniciando servidor..."
java -Xms512M -Xmx1G -jar server.jar nogui
