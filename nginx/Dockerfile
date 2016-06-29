FROM nginx:1.10.1-alpine
COPY nginx.vh.drupal.conf /etc/nginx/conf.d/default.conf
RUN set -x \
	&& addgroup -g 82 -S www-data \
    && addgroup nginx www-data
