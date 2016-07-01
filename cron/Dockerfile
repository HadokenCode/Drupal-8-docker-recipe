FROM php:5.6.23-alpine
RUN set -x \
    && apk add --no-cache libpng-dev binutils \
    && docker-php-ext-install gd pdo_mysql
RUN { \
        echo 'date.timezone=UTC'; \
        echo 'memory_limit="384M"'; \
        echo 'max_execution_time=0'; \
    } > /usr/local/etc/php/conf.d/zzz-overrides.ini
COPY drupalcron.sh /usr/local/bin/drupalcron.sh
COPY www-data /var/spool/cron/crontabs/
CMD ["/usr/sbin/crond", "-l", "2", "-f"]