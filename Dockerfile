FROM php:8.2-apache

# =============================================
# Dependências do sistema
# =============================================
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libonig-dev \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libwebp-dev \
    libssl-dev \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# =============================================
# Configurar GD com suporte a JPEG, PNG, WebP, FreeType
# =============================================
RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg \
    --with-webp

# =============================================
# Instalar extensões PHP necessárias
# =============================================
RUN docker-php-ext-install \
    mysqli \
    pdo \
    pdo_mysql \
    curl \
    gd \
    mbstring \
    zip \
    openssl \
    opcache

# =============================================
# Habilitar mod_rewrite do Apache (.htaccess)
# =============================================
RUN a2enmod rewrite headers deflate

# =============================================
# Configurações do PHP para produção
# =============================================
RUN echo '\
upload_max_filesize = 50M\n\
post_max_size = 50M\n\
memory_limit = 256M\n\
max_execution_time = 300\n\
max_input_time = 300\n\
session.save_path = /tmp\n\
date.timezone = America/Sao_Paulo\n\
' > /usr/local/etc/php/conf.d/custom.ini

# =============================================
# Configurar open_basedir
# =============================================
RUN echo 'open_basedir=/var/www/html/:/tmp/' > /usr/local/etc/php/conf.d/basedir.ini

# =============================================
# Permitir .htaccess (AllowOverride All)
# =============================================
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

EXPOSE 80