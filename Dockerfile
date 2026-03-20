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
# mysqli / pdo_mysql  -> Banco de dados (database.php, crud.php, etc.)
# curl                -> Payment gateways (ecompag, bspay, greepay), Telegram 2FA, game providers
# gd                  -> Manipulação de imagens, QR codes (phpqrcode), getimagesize
# mbstring            -> Strings UTF-8
# zip                 -> Exportação de dados (exportar_usuarios.php com ZipArchive)
# openssl             -> Criptografia AES-256-CBC (funcao.php CRIPT_AES)
# opcache             -> Performance em produção
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
# Criar pasta e copiar projeto
# =============================================
RUN mkdir -p /code
COPY . /code

# Configurar open_basedir correto para o container
RUN echo 'open_basedir=/code/:/tmp/' > /code/.user.ini

# =============================================
# Permissões
# =============================================
RUN chown -R www-data:www-data /code \
    && chmod -R 755 /code \
    && mkdir -p /code/uploads \
    && chmod -R 775 /code/uploads

# =============================================
# Apache: DocumentRoot -> /code
# =============================================
RUN sed -i 's|/var/www/html|/code|g' /etc/apache2/sites-available/000-default.conf

# Permitir .htaccess global (AllowOverride All) + Segurança
RUN echo '<Directory /code>\n\
    Options FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>\n\
\n\
<Directory /code/admin/services>\n\
    Require all denied\n\
</Directory>' > /etc/apache2/conf-available/custom.conf

RUN a2enconf custom

WORKDIR /code

EXPOSE 80