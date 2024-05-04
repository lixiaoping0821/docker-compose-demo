# MySQL基础镜像
FROM mysql:8.3.0
# 定义构建的版本号
ARG VERSION=1.0.0
# 将初始化SQL拷贝到临时目录下
COPY ./init-sql /tmp/sql
# 将SQL脚本移至docker-entrypoint-initdb.d文件夹，让容器初始化时创建数据库
RUN mv /tmp/sql/init-master-slave.sql /docker-entrypoint-initdb.d
# 删除临时目录
RUN rm -rf /tmp/sql