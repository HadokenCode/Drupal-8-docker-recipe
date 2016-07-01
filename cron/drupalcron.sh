#!/bin/sh
if [-f /code/vendor/bin/drupal]; then
    cd /code/web
    ../vendor/bin/drupal cron:execute all
fi