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
可重复执行，自动比较checksum同步不同的文件
```shell
cd rclone
# 编辑rclone.conf
sh sync.sh
```
# 检查数据完整性
在当前目录生成两个报告文件:differ(不同),missing(目标缺失)，error(计算checksum出错)
```shell
cd rclone
sh check.sh
```
# tips
- 生产不要以单结点启动,否则[无法扩容](https://github.com/minio/minio/issues/4104)
- 同步数据目前不支持bucket锁，或者对象过期时间[#4683](https://github.com/rclone/rclone/issues/4683),可使用```mc mirror --preserve```代替