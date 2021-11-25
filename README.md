# 单结点启动
```shell
cd docker
sh runme.sh
```
# docker-compose伪集群启动
```shell
cd docker-compose/multi-server
docker-compose up
```
# 同步数据
```shell
cd rclone
# 编辑rclone.conf
sh runme.sh
```
# tips
- 不要以单结点启动,否则[无法扩容](https://github.com/minio/minio/issues/4104)
