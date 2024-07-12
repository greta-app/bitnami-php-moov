FROM bitnami/php-fpm:7.4
RUN apt-get update && apt-get install -y sendmail ffmpeg git libmagickwand-dev build-essential --no-install-recommends
RUN pecl install imagick
RUN echo 'extension=imagick.so' > /opt/bitnami/php/etc/php.ini
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN groupadd -g 1000 ec2-user && useradd -u 1000 -g ec2-user -m ec2-user
RUN chown -R 1000:1000 /opt/bitnami
USER 1000
