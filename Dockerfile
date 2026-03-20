FROM php:8.2-apache

# Instalar dependências do sistema para extensões PHP
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libonig-dev \
    && rm -rf /var/lib/apt/lists/*

# Instalar extensões PHP necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql curl mbstring

# Habilitar mod_rewrite do Apache (necessário para .htaccess)
RUN a2enmod rewrite

# Criar pasta do projeto
RUN mkdir -p /code

# Copiar projeto
COPY . /code

# Configurar open_basedir correto para o container
RUN echo 'open_basedir=/code/:/tmp/' > /code/.user.ini

# Permissões
RUN chown -R www-data:www-data /code
RUN chmod -R 755 /code
RUN chmod -R 777 /code/uploads

# Apache usar /code como DocumentRoot
RUN sed -i 's|/var/www/html|/code|g' /etc/apache2/sites-available/000-default.conf

# Permitir .htaccess global (AllowOverride All)
RUN echo '<Directory /code>\n\
    Options FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' > /etc/apache2/conf-available/custom.conf

RUN a2enconf custom

WORKDIR /code

EXPOSE 80