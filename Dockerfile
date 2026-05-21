FROM mediawiki:stable

# 切换到 root 建立环境
USER root
RUN mkdir -p /var/www/html/data

# 将下载好的配置文件直接塞进系统
COPY LocalSettings.php /var/www/html/LocalSettings.php

# 统一赋权
RUN chown -R www-data:www-data /var/www/html/


USER www-data
