# MySql-Kafka-Es 集群

#### 准备工作

- 创建自定义网络 docker network create -d bridge mke
- elasticsearch需要新建索引，打开dev tool，执行：

```
PUT worldplant
{
  "mappings": {
    "properties": {
      "id": {
        "type": "long"
      },
      "name": {
         "type": "text",
         "analyzer": "ik_max_word"
      },
      "type": {
        "type": "integer"
      }
    }
  }
}
```

#### 基础操作

- 在当前目录下，运行 docker-compose up -d
- kibana 地址：http://localhost:5601
- 使用clean.bat脚本可以快速清理运行时产生的文件，方便重新开始。

#### 公众号

公众号中有文章对样例进行详细的阐述。

![](../jygzhqr.jpg)