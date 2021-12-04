#!/usr/bin/sh
docker-compose up -d --build --force-recreate
echo "### docker-compose build finished. Wait 4 seconds and magento2 installation will begins... ###"
sleep 4s
docker-compose exec app composer install
docker-compose exec app php bin/magento setup:install \
--base-url=http://127.0.0.1:7777/ \
--db-host=mysqlhost:6033 \
--db-name=magentodevdb \
--db-user=magentouser \
--db-password=magentoDB123@ \
--admin-firstname=admin \
--admin-lastname=admin \
--admin-email=admin@admin.com \
--admin-user=admin \
--admin-password=admin123 \
--language=lt_LT \
--currency=EUR \
--timezone=Europe/Vilnius \
--search-engine=elasticsearch7 \
--elasticsearch-host=elastic \
--elasticsearch-port=9200 \
--use-rewrites=1
docker-compose exec app php bin/magento setup:di:compile
docker-compose exec app php bin/magento setup:static-content:deploy -f
docker-compose exec app chmod -R 777 /var/www/html/var/
