#sh-4.4# mysqld --verbose --help| grep -A 1 "Default options"
#mysqld: [Warning] World-writable config file '/etc/mysql/my.cnf' is ignored.
#Default options are read from the following files in the given order:
#/etc/my.cnf /etc/mysql/my.cnf /usr/etc/my.cnf ~/.my.cnf
# 创建从节点需要使用的账号
create user slave_user identified WITH mysql_native_password by 'password';

# 授予权限
grant select, replication slave, replication client on *.* to 'slave_user'@'%';

# 刷新并应用
flush privileges;