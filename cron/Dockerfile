FROM php:5.6.23-alpine
RUN set -x \
    && apk add --no-cache libpng-dev binutils \
    && docker-php-ext-install gd pdo_mysql
RUN { \
        echo 'date.timezone=UTC'; \
        echo 'memory_limit="384M"'; \
        echo 'max_execution_time=0'; \
    } > /usr/local/etc/php/conf.d/zzz-overrides.ini
RUN set -x \
	&& apk add --no-cache openssh \
	&& addgroup -g 82 -S mgi \
	&& adduser -u 82 -D -h /home/mgi -s /bin/sh -G mgi mgi