# 停止
stop slave;
# 设置连接master
change master to
    # 主库的IP，因为使用了docker所以使用服务名来当主机名
    master_host ='mysql-master',
    # 主库同步的用户
    master_user ='slave_user',
    # 主库同步的用户密码
    master_password ='password',
    # 主库的端口
    master_port =3306,
    # 同步的文件
    master_log_file ='mysql-bin.000002',
    #此处需要根据主节点show master status命令的结果修改
    master_log_pos =157;
# 启动同步
start slave;