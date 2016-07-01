#!/bin/sh
if [ ! -f /home/www-data/.console/config.yml ]; then
    cd /code/web
    ../vendor/bin/drupal init
fi
if [ -f /code/vendor/bin/drupal ]; then
    cd /code/web
    ../vendor/bin/drupal cron:execute all
fi