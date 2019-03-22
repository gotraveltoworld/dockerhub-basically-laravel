FROM futuretraveler/dockerhub-laravel-demo:latest
# Set working directory
WORKDIR /var/www/html

# Create a group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Move the composer binary
RUN mv /usr/bin/composer /var/www/composer && chmod 755 /var/www/composer \
    && chown appuser:appgroup /var/www/composer

# Tell docker that all future commands should run as the appuser user
USER appuser
Run /var/www/composer require "laravel/installer" \
    && /var/www/composer create-project --prefer-dist laravel/laravel /var/www/html
