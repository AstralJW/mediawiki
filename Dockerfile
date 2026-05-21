FROM mediawiki:stable

USER root

RUN mkdir -p /var/www/html/data

COPY LocalSettings.php /var/www/html/LocalSettings.php

RUN chown -R www-data:www-data /var/www/html/

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
