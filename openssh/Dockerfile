FROM alpine:3.4
RUN set -x \
	&& apk add --no-cache openssh \
	&& addgroup -g 82 -S mgi \
	&& adduser -u 82 -D -h /var/www -s /bin/sh -G mgi mgi \
    && chpasswd --md5 mgi $RANDOM$RANDOM \
    && passwd -u mgi \
    && mkdir -p /var/www/.ssh \
    && chown mgi:mgi /var/www/.ssh \
    && chmod 700 /var/www/.ssh \
    && mkdir -p /var/empty \
    && ssh-keygen -A
COPY authorized_keys /var/www/.ssh/authorized_keys
RUN chown mgi:mgi /var/www/.ssh/authorized_keys \
    && chmod 600 /var/www/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e", "-o", "PasswordAuthentication no", "-o", "UseDNS no"]
