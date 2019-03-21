FROM futuretraveler/dockerhub-laravel-demo:latest
# Set working directory
WORKDIR /var/www/html

# Run composer.
RUN composer global require "laravel/installer" \ 
    && composer create-project --prefer-dist laravel/laravel /var/www/html
