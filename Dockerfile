FROM php:7.4-apache

# Copia o arquivo PHP para o diretório padrão do Apache
COPY ./app/index.php /var/www/html/index.php

# Expondo a porta padrão do Apache
EXPOSE 80
