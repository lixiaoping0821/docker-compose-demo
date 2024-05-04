# MySql主从集群

#### 准备工作

- 创建自定义网络 docker network create -d bridge mysql-cluster

#### 基础操作

- 运行startup.bat脚本
- 使用clean.bat脚本可以快速清理运行时产生的文件，方便重新开始
- 当从节点也启动后，执行./scripts/init-master-slave.sql完成从节点连接主节点
- 执行./scripts/test-data.sql验证数据同步结果

#### 挂载配置文件
- 挂载到conf.d目录下的时候权限要改成644

#### 启动的时候报错
- 如果是server_id重复说明挂载配置不对。

- Replica failed to initialize applier metadata structure from the repository
- 报错这个时候重新挂载下从库即可。
- reset slave;
- stop slave;
- change master to xxxx;
- start slave;
- Slave_IO_Running: Yes
- Slave_SQL_Running: Yes
- 这2个都是yes即可。

mysql> show master status;
+------------------+----------+--------------+------------------+-------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+------------------+----------+--------------+------------------+-------------------+
| mysql-bin.000002 |      157 |              |                  |                   |
+------------------+----------+--------------+------------------+-------------------+
#### 查看server_id
mysql> SHOW SESSION VARIABLES LIKE 'server_id';
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| server_id     | 2     |
+---------------+-------+
1 row in set (0.01 sec)