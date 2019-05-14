# *************************************
#
# OMO AMS
#
# VERSION: 1.0.0
#
# *************************************

FROM alpine:3.8

MAINTAINER XTech Cloud "xtech.cloud"

ENV container docker
ENV GIN_MODE release
ENV AMS_HTTP_ADDR :80
ENV AMS_RPC_ADDR :10080
ENV AMS_DATABASE_DRIVER sqlite
ENV AMS_SQLITE_FILEPATH /var/data/ams.db
ENV AMS_MYSQL_ADDR 127.0.0.1:3306
ENV AMS_MYSQL_USER root
ENV AMS_MYSQL_PASSWORD mysql@OMO
ENV AMS_MYSQL_DATABASE ams
ENV AMS_LOG_FILE /var/log/ams.log
ENV AMS_LOG_LEVEL INFO

VOLUME /var/data
VOLUME /var/log

EXPOSE 80
EXPOSE 10080

ADD ams /usr/local/bin/
RUN chmod +x /usr/local/bin/ams
RUN mkdir /var/data/

CMD ["ams"]
