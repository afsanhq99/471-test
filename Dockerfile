# Use the official PHP base image with Apache
FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the PHP application code to the container
COPY . /var/www/html

# Install PHP extensions and enable Apache modules
RUN docker-php-ext-install mysqli pdo_mysql && \
    a2enmod rewrite

# Expose port 80 for the web server
EXPOSE 80
