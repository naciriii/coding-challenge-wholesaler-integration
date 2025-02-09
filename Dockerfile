FROM php:7.3-alpine

WORKDIR /app
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
COPY composer.json .
RUN composer install
COPY . .
EXPOSE 8000
ENTRYPOINT [ "composer", "serve" ]
