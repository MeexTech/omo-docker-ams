# 使用
```
~# docker pull xtechcloud/omo-ams
~# docker run --restart=always --name=omo-ams -d xtechcloud/omo-ams
```

# 更改端口 

```
~# docker run --restart=always --name=omo-ams -p 10080:80 -d xtechcloud/omo-ams
```

# 使用sqlite

默认使用sqlite，数据库存放于/var/data/omo/omo.db,等同于以下方式。

```
~# docker run --restart=always --name=omo-ams -e AMS_DATABASE_DRIVER=sqlite -e AMS_SQLITE_FILEPATH=/var/data/omo/omo.db -d xtechcloud/omo-ams
```

# 使用mysql
```
~# docker run --restart=always --name=omo-ams -e AMS_DATABASE_DRIVER=mysql -e AMS_MYSQL_ADDR=127.0.0.1:3306 -e AMS_MYSQL_USER=root -e AMS_MYSQL_PASSWORD=mysql@OMO -e AMS_MYSQL_DATABASE=omo -d xtechcloud/omo-ams
 ```

#环境变量列表

```
ENV GIN_MODE release
ENV APP_HTTP_ADDR :80
ENV APP_ISS ams
ENV APP_SECRET ams-secret
ENV AMS_SALT_SUFFIX
ENV APP_DATABASE_DRIVER sqlite
ENV APP_SQLITE_FILEPATH /var/data/omo/omo.db
ENV APP_MYSQL_ADDR 127.0.0.1:3306
ENV APP_MYSQL_USER root
ENV APP_MYSQL_PASSWORD mysql@OMO
ENV APP_MYSQL_DATABASE omo
ENV APP_LOG_FILE /var/log/omo/app.log
ENV APP_LOG_LEVEL INFO
```

# API
参考 https://github.com/xtech-cloud/omo-msa-ams

