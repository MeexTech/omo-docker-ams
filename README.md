# 使用
```
~# docker pull xtechcloud/omo-ams
~# docker run --restart=always --name=omo-ams -d xtechcloud/omo-ams
```

# 更改端口 
内部80端口用于http访问，10080端口用于gprc访问

```
~# docker run --restart=always --name=omo-ams -p 10080:80 -p 10088:10080 -d xtechcloud/omo-ams
```

# 使用sqlite

默认使用sqlite，数据库存放于/var/data/ams.db,等同于以下方式。

```
~# docker run --restart=always --name=omo-ams -e AMS_DATABASE_DRIVER=sqlite -e AMS_SQLITE_FILEPATH=/var/data/ams.db -d xtechcloud/omo-ams
```

# 使用mysql
```
~# docker run --restart=always --name=omo-ams -e AMS_DATABASE_DRIVER=mysql -e AMS_MYSQL_ADDR=127.0.0.1:3306 -e AMS_MYSQL_USER=root -e AMS_MYSQL_PASSWORD=mysql@OMO -e AMS_MYSQL_DATABASE=ams -d xtechcloud/omo-ams
 ```

# API
参考 https://github.com/xtech-cloud/omo-msa-ams

