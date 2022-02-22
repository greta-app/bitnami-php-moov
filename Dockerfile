FROM bitnami/php-fpm:7.4.28
RUN apt-get update && apt-get install -y sendmail ffmpeg git
