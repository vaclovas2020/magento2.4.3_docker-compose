#!/usr/bin/sh
docker-compose exec app php bin/magento setup:di:compile
docker-compose exec app php bin/magento setup:static-content:deploy -f
docker-compose exec app chmod -R 777 /var/www/html/var/