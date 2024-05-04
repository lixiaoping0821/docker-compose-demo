# Redis哨兵 集群

#### 准备工作

- 创建自定义网络 ```docker network create -d bridge redis-cluster```

#### 注意事项

- slave的配置中replicaof指向的地址是宿主机，需根据具体IP改动

#### 公众号

公众号中有文章对样例进行详细的阐述。

![](../jygzhqr.jpg)