set names utf8mb4;
set foreign_key_checks = 0;

# 创建样例数据库
create database mall;
# 指定使用样例数据库
use mall;

-- ----------------------------
-- 创建测试表结构
-- ----------------------------
drop table if exists `order`;
create table `order`
(
    `id`           bigint not null,
    `price`        decimal(10, 2) default null,
    `created_time` timestamp(3),
    primary key (`id`) using btree
) engine = innodb;

-- ----------------------------
-- 插入测试数据
-- ----------------------------
insert into mall.`order` (id, price, created_time)
values (1, 10.00, '2024-03-07 19:24:12.000');