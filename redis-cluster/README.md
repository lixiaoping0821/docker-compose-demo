# 搭建redis cluster

#### 准备工作

- 创建自定义网络 docker network create -d bridge redis-cluster

#### 基础操作

- 运行startup.bat脚本
-

创建集群：任意节点的命令行中执行 `redis-cli -p 6391 -a password --cluster create 192.168.31.41:6391 192.168.31.41:6392 192.168.31.41:6393 192.168.31.41:6394 192.168.31.41:6395 192.168.31.41:6396 --cluster-replicas 1`

- 如果要修改集群ip，同时需要修改每个节点redis.conf中cluster-announce-ip
- 使用clean.bat脚本可以快速清理运行时产生的文件，方便重新开始

#### 公众号

公众号中有文章对样例进行详细的阐述。

![](../jygzhqr.jpg)