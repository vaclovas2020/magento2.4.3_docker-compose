#!/usr/bin/sh
docker-compose exec app php bin/magento cache:clean
docker-compose exec app php bin/magento cache:flush
docker-compose exec app php bin/magento setup:di:compile
docker-compose exec app php bin/magento setup:static-content:deploy -s standard -f
docker-compose exec app chmod -R 777 /var/www/html/pub/static/
docker-compose exec app chmod -R 777 /var/www/html/var/