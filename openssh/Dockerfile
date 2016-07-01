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
    && passwd -u www-data \
    && mkdir -p /home/www-data/.ssh \
    && chown www-data:www-data /home/www-data/.ssh \
    && chmod 700 /home/www-data/.ssh \
    && mkdir -p /var/empty \
    && ssh-keygen -A
COPY authorized_keys /home/www-data/.ssh/authorized_keys
RUN chown www-data:www-data /home/www-data/.ssh/authorized_keys \
    && chmod 600 /home/www-data/.ssh/authorized_keys \
    && sed -i -e 's/false/sh/' /etc/passwd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e", "-o", "PasswordAuthentication no", "-o", "UseDNS no"]