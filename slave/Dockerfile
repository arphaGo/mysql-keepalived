# Docker file from pjq # VERSION 0.0.1
# Author: pjq

#基础镜像
FROM mysql-keepalived-slave:v1

#作者
MAINTAINER pjq

#(1)mysql配置文件修改(my.cnf)
#定义配置文件存放目录
ENV MY_CNF_PATH /etc

#定义配置文件名(my.cnf)
ENV MY_CNF_NAME my.cnf

#删除原有的配置文件
RUN rm $MY_CNF_PATH/$MY_CNF_NAME

#复制新的配置文件
COPY ./$MY_CNF_NAME $MY_CNF_PATH/

#(2)keepalived配置文件修改(keepalived.conf)
#定义配置文件存放目录
ENV KEEPALIVED_CONF_PATH /etc/keepalived

#定义配置文件名(keepalived.conf)
ENV KEEPALIVED_CONF_NAME keepalived.conf

#删除原有的配置文件
RUN rm $KEEPALIVED_CONF_PATH/$KEEPALIVED_CONF_NAME

#复制新的配置文件
COPY ./$KEEPALIVED_CONF_NAME $KEEPALIVED_CONF_PATH/

#(3)3306端口监控文件创建(mysql.sh)
#定义配置文件存放目录
ENV MYSQl_CONF_PATH /tmp

#定义配置文件名(mysql.sh)
ENV MYSQl_CONF_NAME mysql.sh

#复制新的配置文件
COPY ./$MYSQl_CONF_NAME $MYSQl_CONF_PATH/

#给文件增加权限
RUN chmod 777 $MYSQl_CONF_PATH/$MYSQl_CONF_NAME





