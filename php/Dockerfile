FROM php:5.6.23-fpm-alpine
RUN mkdir /code \
    && chown www-data:www-data /code \
    && apk add --no-cache libpng-dev binutils \
    && docker-php-ext-enable opcache \
    && docker-php-ext-install gd pdo_mysql
RUN { \
		echo 'opcache.memory_consumption=128'; \
		echo 'opcache.interned_strings_buffer=8'; \
		echo 'opcache.max_accelerated_files=4000'; \
		echo 'opcache.revalidate_freq=60'; \
		echo 'opcache.fast_shutdown=1'; \
		echo 'opcache.enable_cli=1'; \
	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN { \
        echo 'date.timezone=UTC'; \
        echo 'memory_limit="192M"'; \
        echo 'upload_max_filesize="96M"'; \
        echo 'max_file_uploads=8'; \
        echo 'post_max_size="96M"'; \
    } > /usr/local/etc/php/conf.d/zzz-overrides.ini
