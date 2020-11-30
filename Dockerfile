FROM bitnami/php-fpm:7.2.29-prod
RUN apt-get update && apt-get install -y sendmail ffmpeg git
