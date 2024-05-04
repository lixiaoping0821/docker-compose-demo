# docker-elk

#### 介绍

使用容器部署mysql、logstash、elasticsearch、kibana进行mysql数据和es之间的同步

#### 安装教程

- 创建自定义网络 docker network create -d bridge elk

#### 基础操作

- 在当前目录下，运行 docker-compose up -d
- kibana 地址：http://localhost:5601
- 使用clean.bat脚本可以快速清理运行时产生的文件，方便重新开始。

#### 公众号

公众号中有文章对样例进行详细的阐述。

![](../jygzhqr.jpg)