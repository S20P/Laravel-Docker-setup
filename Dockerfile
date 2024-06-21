FROM php:8.2.12 AS php

# Set environment variables
ENV PORT=8000

# Install dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    git \
    curl \
    libzip-dev \
    && docker-php-ext-install pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /var/www/html

# Copy the entrypoint script into the container
COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
