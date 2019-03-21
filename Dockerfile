FROM futuretraveler/dockerhub-laravel-demo:latest
# Set working directory
WORKDIR /var/www

# Copy composer.json into container
COPY composer.json .
RUN composer install -o
