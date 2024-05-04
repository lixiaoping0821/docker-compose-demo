set names utf8mb4;
set foreign_key_checks = 0;

# 创建样例数据库
create database world;
# 指定使用样例数据库
use world;

-- ----------------------------
-- 创建plant表结构
-- ----------------------------
drop table if exists `plant`;
create table `plant`
(
    `id`   int not null,
    `name` varchar(255) default null,
    `type` int(1),
    primary key (`id`) using btree
) engine = innodb;

# 创建canal需要使用的账号
create user canal identified by 'canal';
# 授予权限
grant select, replication slave, replication client on *.* to 'canal'@'%';
-- grant all privileges on *.* to 'canal'@'%' ;
# 刷新并应用
flush privileges;