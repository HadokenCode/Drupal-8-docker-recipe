# Drupal 8 Docker Composer recipe

Minimal concept for Drupal 8 using
- Nginx
- PHP (FPM)
- Mariadb
- Memcached
- Solr

## Some details about it
- Includes SSH instance with PHP cli; user should be able to login and install composer, drush and drupal console.
- SSH, PHP and Nginx instances share same volume in `/code`, so common stuff should be kept in it.
- Cron instance to run the Drupal cron every 5 minutes (adjust on needs)
    - The Cron instance requires Drush to run the cron, although it should be possible without it.

###### More to come
