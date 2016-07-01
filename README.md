# Drupal 8 Docker Composer recipe

Minimal concept for Drupal 8 using
- Nginx - basic
- PHP (FPM) - basic
- Mariadb - basic
- Memcached - tbd
- Solr - tbd

## Important before trying it
It is meant to be used by the future way of using Drupal, using Composer. It's not intended for classic Drupal,
although with small adjustments it could work fine.
A great Drupal Composer to start with:
- [https://packagist.org/packages/madalinignisca/drupal-skeleton]

## Some details about it
- Includes SSH instance with PHP cli; user should be able to login and install composer, drush and drupal console.
- SSH, PHP and Nginx instances share same volume in `/code`, so common stuff should be kept in it.
- Cron instance to run the Drupal cron every 5 minutes (adjust on needs)
    - The Cron instance requires Drupal console to run the cron

## Ideas for the future
- Research Perusio's Nginx recipes for his security implemenations
- Research if Nginx supports any way of testing if an upstream is available and use it
- Fine tune Mariadb strictly for Drupal necesities to minimize ram usage
- PHP-FPM can do some nice stuff if fine tuned

###### More to come
