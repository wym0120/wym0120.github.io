---
title: transwarp-QA
date: 2020-12-08 22:42:56
tags:
categories:
description: 星环考试问答
---
### 练习题库(一)

1. 在 HDFS 服务中，为了保证 Name Node 高可用性的角色不包括
A. Data Node☑️
B. Journal Node
C. ZKFC
D. Zookeeper

1. Namenode 在启动时自动进入安全模式，在安全模式阶段，说法错误的是
A. 安全模式目的是在系统启动时对数据有效性进行检查
B. 根据策略对数据块进行必要的复制或删除
C. 当数据块的上报数达到阈值时，会自动退出安全模式
D. 允许用户对文件系统进行读写操作☑️

1. 在集群中配置 HDFS 的副本数为 3，设置数据块大小为 128M，此时我们上传一份 64M 的数据文件，该数据文件占用 HDFS 空间大小为
A. 64M
B. 128M
C. 384M☑️
D. 192M

1. 下列对 YARN 角色在集群中的作用描述正确的是
A. 集群资源管理☑️
B. 集群任务调度与管理☑️
C. 存储部分 HDFS 上的数据块
D. 以上都正确

1. 在 Yarn 服务中，不包含以下哪种角色
A. ResourceManager
B. NodeManager
C. ApplicationMaster
D. Contianer☑️

1. 下列计算框架中不属于分布式计算框架的是
A. MapReduce
B. MATLAB☑️
C. SPARK
D. Tez

1. 以下关于外表和托管表描述正确的是
A. 外表的数据存储在本地，托管表的数据存储在 hdfs 上
B. 删除托管表只会删除 Inceptor 上的元数据不会删除数据文件，删除外表两者都会 被删除
C. 删除外表只会删除 Inceptor 上的元数据不会删除数据文件，删除托管表两者都会 被删除☑️
D. 删除托管表或外表，incepotr 上的元数据和数据文件都会被删除

1. 以下对分桶表的描述正确的是
A. 分桶表通过改变数据的存储分布，对查询起到一定的优化作用☑️
B. 分桶键不能是表中的列
C. 分桶数应为素数
D. 事物表必须制定分桶，分桶字段可以被更新

1. 以下关于 inceptor excutor 资源配置的说法正确的有
A. Excutor 资源配置 fixed 和 ratio 两种模式☑️
B. Excutor 内核数配置的是每个 excutor 所使用的逻辑 core 数量☑️
C. Excutor 内核数和内存配置比例一般为 1 core:2G memory☑️
D. Excutor 分布可以指定每个节点运行的 excutor 数量或 executor 在集群上运行的 总数量，但是不能指定运行的节点

1. 假设使用场景中有如下查询语句
```sql
SELECT Sex, Region, COUNT(ID), AVG (Salary)
FROM Employee
WHERE Department = 'IT'
GROUP BY Sex, Region
ORDER BY Sex, Region;
```
通过 holodesk 的 cube 和 index 手段对这种过滤率和聚合率高的业务进行优化，以下建表 正确的是
```sql
A.☑️ CREATE TABLE Employee
TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex, Region')

B. CREATE TABLE Employee
TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Sex, Region'
'holodesk.dimension' = 'Department' )

C. CREATE TABLE Employee TBLPROPERTIES (
'cache' = ''Department'',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex, Region')

D. CREATE TABLE Employee TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex' )
```
1. 关于 Hyperbase 全局索引的描述，哪些是正确的？
A. 核心是倒排表☑️
B. 全局索引概念是对应 Rowkey 这个“一级”索引☑️
C. 全局索引使用平衡二叉树
D. 全局索引使用 B+树检索数据☑️

1. 以下为 Hyperbase 分布式存储的最小单元的是
A. Region server
B. Region☑️
C. StoreFile
D. Store

1. 以下有关 Hyperbase 说法正确的是
A. 数据类型丰富，支持 String. Int. Char 等类型
B. Key/value 系统，key 由 Row,Column Family,Column Qualifier 组成
C. Hyperbase 表中 rowkey 有序，按字典序降序排列
D. 以上说法都不正确☑️

1. 以下关于 StreamSQL 的概念描述正确的是
A. Stream 是数据流☑️
B. Streamjob 是对一个或多个 stream 进行计算并将结果写进一个流的任务
C. Application 是一个或多个 streamjob 的集合☑️
D. 以上说法都不正确

1. 某交通部门通过使用流监控全市过往 24 小时各个卡口数据，要求每分钟更新一次， 原始流为 org_stream，以下实现正确的是
```sql
A. CREATE STREAMWINDOW traffic_stream AS SELECT * FROM original_stream
STREAM w1 AS (length '1' minute slide '24' hour);
B. CREATE STREAM traffic_stream AS SELECT * FROM original_stream
STREAMWINDOW w1 AS (length '1' minute slide '24' hour);
C.☑️ CREATE STREAM traffic_stream AS SELECT * FROM original_stream
STREAMWINDOW w1 AS (length '24' hour slide '1' minute);
D. CREATE STREAM traffic_stream AS SELECT * FROM original_stream AS (length '24'
second slide '1' minute);
```
1. 以下不是 Zookeeper 的功能是
A. 配置管理
B. 集群管理
C. 分布式锁
D. 存储大量数据☑️

1. 以下服务需要与 zookeeper 进行通信的是
A. HMaster
B. Active NameNode
C. InceptorSQL
D. Active ResourceManager☑️

1. 下列是关于 flume 和 sqoop 对比的描述，不正确的是
A. flume 主要用来采集日志而 sqoop 主要用来做数据迁移
B. flume 主要采集流式数据而 sqoop 主要用来迁移规范化数据☑️
C. flume 和 sqoop 都是分布式处理任务☑️
D. flume 主要用于采集多数据源小数据而 sqoop 用来迁移单数据源数据

1. 有关使用 sqoop 抽取数据的原理的描述不正确的是
A. sqoop 在抽取数据的时候可以指定 map 的个数，map 的个数决定在 hdfs 生成的 数据文件的个数
B. sqoop 抽取数据是个多节点并行抽取的过程，因此 map 的个数设置的越多性能越好☑️
C. sqoop 任务的切分是根据 split 字段的（最大值-最小值）/map 数
D. sqoop 抽取数据的时候需要保证执行当前用户有权限执行相应的操作

1. sqoop 抽取数据时需要做一些数据转换的工作，下面说法不正确的是
A. --fields-terminated-by '\\01' 用来设置在 hdfs 生成的文件的分割符
B. --hive-drop-import-delims 用来设置在 hdfs 生成的文件的存储形式为列存储☑️
C. --null-string '\\N' 用来把所有的 String 类型的空值 转换成 hive 的 NULL 值
D. --null-non-string '\\N' 用来把非 String 类型的空值 转换成 hive 的 NULL 值

1. 下列有关 flume 的描述不正确的是
A. flume 是 Apache 的一个子项目
B. flume 主要是一个日志采集，传输系统
C. flume 和 sqoop 功能相似，因此可以相互替代☑️
D. flume 可以同时采集集群内部和集群外部的日志数据

1. 下列 sink 中哪些是 flume 不支持的 sink
A. HDFS sink
B. kafka sink
C. memory sink☑️
D. file roll sink

1. 以下对 ElasticSearch 描述不正确的是
A. ElasticSearch 是分布式全文搜索引擎
B. ElasticSearch 集群中分 master 和 data 节点
C. ElasticSearch 数据存储在 HDFS 上☑️
D. ElasticSearch 数据可以按 Shard 分布在不同的节点上

1. 下列不属于 kafka 应用场景的是
A. 常规的消息收集
B. 网站活动性跟踪
C. 日志收集
D. 关系型数据库和大数据平台之间的数据迁移☑️

1. TDH 提供哪几种认证模式？
A. 所有服务使用简单认证模式——所有服务都无需认证即可互相访问☑️
B. 所有服务都启用 Kerberos 认证，用户要提供 Kerberos principal 和密码（或者keytab）来访问各个服务☑️
C. 所有服务都启用 Kerberos 同时 Inceptor 启用 LDAP 认证☑️
D. 所有服务都启用 LDAP 认证

1. 以下对各组件的运维页面描述不正确的是
A. 通过 Name Node 的 50070 页面对 HDFS 进行监控
B. 通过 Resource Manager 的 8180 对 YARN 上运行的任务进行监控☑️
C. 通过 HMaster 的 60010 对 HBase 进行监控☑
D. 通过 Hue Server 的 8888 页面登入 Hue

1. Inceptor server 服务无法启动时，该如何查看日志是
A. 查看 TDH manager 所在节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志
B. 查看 Inceptor server 所在节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志☑️
C. 查 看 Resource Manager 所 在 节 点 /var/log/Yarn*/ 目 录 下 的
yarn-yarn-resourcemanager-poc-node1.log 日志
D. 查看任意节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志

1. 以下对 Hadoop 组件的应用场景描述正确的是
A. Hive 主要用于构建大数据数仓，主要做批处理. 统计分析型业务☑️
B. Hbase 主要用于检索查询的 OLTP 业务☑️
C. ElasticSearch 主要用于全文检索的关键字查询业务☑️
D. Spark Streaming 主要用于实时数据的业务场景☑️

1. 以下不属于管理角色的是
A. Name Node
B. HMaster
C. Resource Manager
D. Node Manager☑️

1. 下面哪些工作不属于集群预安装工作
A. 为集群中每个节点的安装操作系统
B. 选一个节点作为管理节点，修改其 /etc/hosts 文件
C. 安装 Transwarp Manager 管理界面
D. 配置集群安全模式☑️

### 练习题库(二)

1. 下列与 HDFS 有关的说法正确的是
A. HDFS DataNode 节点上的磁盘需要做 RAID1，用来保证数据的可靠性
B. HDFS 可以在磁盘之间通过 balance 操作，平衡磁盘之间的负载情况
C. HDFS 建议 DataNode 之间的数据盘个数. 容量大小不一致，以体现 HDFS 的负均
衡能力
D. 规划 HDFS 集群时，建议 Active NameNode 和 Standby NameNode 分配在不同机
架上☑️

1. 在 HDFS 服务中，为了保证 Name Node 高可用性的角色不包括
A. Data Node☑️
B. Journal Node
C. ZKFC
D. Zookeeper

1. 在集群中配置 HDFS 的副本数为 3，设置数据块大小为 128M，此时我们上传一份 64M 的数据文件，该数据文件占用 HDFS 空间大小为
A. 64M
B. 128M
C. 384M☑️
D. 192M

1. 在 Yarn 服务中，不包含以下哪种角色
A. ResourceManager
B. NodeManager
C. ApplicationMaster☑️
D. Contianer

1. 下列有关 YRAN 中角色的描述不正确的是
A. ResourceManager 控制整个集群并管理基础计算资源的分配
B. NodeManager 管理每个节点的资源，管理抽象容器
C. NodeManager 负责调度当前节点的所有 ApplicationMaster☑️
D. ApplicationMaster 管理一个 YARN 内运行的应用程序的实例

1. Spark 与 MapReduce 对比，突出的优势不包括
A. 基于内存的计算，效率更高
B. Spark 能支持比 MapReduce 更多的应用场景
C. Spark 支持多种编程语言接口，框架开销更低
D. Spark 可以运行在 YARN 之上而 MapReduce 不能☑️

1. 以下关于外表和托管表描述正确的是
A. 外表的数据存储在本地，托管表的数据存储在 hdfs 上
B. 删除托管表只会删除 Inceptor 上的元数据不会删除数据文件，删除外表两者都会 被删除
C. 删除外表只会删除 Inceptor 上的元数据不会删除数据文件，删除托管表两者都会 被删除☑️
D. 删除托管表或外表，incepotr 上的元数据和数据文件都会被删除

1. 导入数据经常会用到 LOAD 命令，以下关于 LOAD 的描述错误的是
A. 源数据文件存放于 hdfs 上，通过 load 命令加载数据文件，数据文件将被复制到 表目录下☑️
B. 目标表为分桶表时不能通过 load 命令加载数据
C. 目标表为分区表时不能通过 load 命令加载数据
D. 当元数据存放于本地时，需要通过指定 LOCAL 关键字

1. tableA 有 10G 的数据，tableB 有 100G 的数据，两个表通过共有的 id 列做关联查询 name 列，以下方式可以优化计算效率的是
A. select /*+MAPJOIN(a)*/ a.name,b.name from tableA a join tableB b on a.id=b.id
B. select /*+MAPJOIN(b)*/ a.name,b.name from tableA a join tableB b on a.id=b.id
C. 建表时将 tableA 和 tableB 根据 id 字段分相同数量的桶☑️
D. 建表时将 tableA 和 tableB 根据 name 字段分相同数量的桶

1. 假设使用场景中有如下查询语句
```sql
SELECT Sex, Region, COUNT(ID), AVG (Salary)
FROM Employee
WHERE Department = 'IT'
GROUP BY Sex, Region
ORDER BY Sex, Region;
```
通过 holodesk 的 cube 和 index 手段对这种过滤率和聚合率高的业务进行优化，以下建表 正确的是
```sql
A. ☑️CREATE TABLE Employee
TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex, Region')

B. CREATE TABLE Employee
TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Sex, Region'
'holodesk.dimension' = 'Department' )

C. CREATE TABLE Employee TBLPROPERTIES (
'cache' = ''Department'',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex, Region')

D. CREATE TABLE Employee TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex' )
```

1. 关于 Hyperbase 全局索引的描述，哪些是正确的？
A. 核心是倒排表☑️
B. 全局索引概念是对应 Rowkey 这个“一级”索引☑️
C. 全局索引使用平衡二叉树
D. 全局索引使用 B+树检索数据☑️

1. 以下不属于 Hyperbase 存储模型单位的是
A. table
B. region☑️
C. StoreFile
D. block

1. 有关 Minor Compact 的描述正确的是
A. 一个 store 下的所有文件合并
B. 删除过期版本数据
C. 删除 delete marker 数据
D. 把多个 HFile 合成一个☑️

1. 以下的 stream 的描述不正确的是
A. Input 定义了如何从数据源读取数据
B. Derived stream 是对 stream 转换而来的，可分为单 batch 变形和多 batch 变形
C. 定义 Derived stream 后 stream 当即根据转换规则进行变形☑️
D. 窗口变形的长度必须是当前流的整数倍

1. 某公司有部门 A. 部门 B…，各部门的源数据都取自于企业总线，要求部门内部共享 数据源，部门间做到资源隔离，以下设计合理的有
A. 部门里每个流任务起一个 application 管理 streamjob
B. 每个部门起一个 application 管理本部门的 streamjob☑️
C. 公司起一个 application 管理所有的 streamjob
D. 每个部门起一个 streamjob 管理本部门的 application

1. Zookeeper 服务描述正确的是
A. Zookeeper 可以存储文件，所以它是用于存储大量数据信息的文件系统。
B. 它是集群的管理服务，总控节点间所有通信。
C. 它是分布式应用程序协调服务。☑️
D. 它是保存所有集群服务的元数据库。

1. 我们可以通过 hue 图形化的操作 HDFS，hue 可以实现 hdfs 的
A. 创建目录☑️
B. 上传文件☑️
C. 直接查看文件☑️
D. 更改权限☑️

1. 通过 oozie workflow 调度 sqoop 任务，以下说法正确的是
A. 必须使用 sudo 用户
B. 确保对应的 jdbc 驱动正确上传到 hdfs 上☑️
C. Sqoop 导入的 hdfs 目录必须前提不存在☑️
D. 以上说法都对

1. 有关使用 sqoop 抽取数据的原理的描述不正确的是
A. sqoop 在抽取数据的时候可以指定 map 的个数，map 的个数决定在 hdfs 生成的 数据文件的个数
B. sqoop 抽取数据是个多节点并行抽取的过程，因此 map 的个数设置的越多性能 越好☑️
C. sqoop 任务的切分是根据 split 字段的（最大值-最小值）/map 数
D. sqoop 抽取数据的时候需要保证执行当前用户有权限执行相应的操作

1. 有关 sqoop 的参数说法不正确的是
A. --username 是必需参数
B. --m 大于 1 时，--split-by 参数是必需参数
C. --query 是执行 sqoop 操作的必需参数☑️
D. --field-terminated-by 用来指定在 hdfs 生成数据文件时的列分隔符

1. 下列是关于 flume 和 sqoop 对比的描述，不正确的是
A. flume 主要用来采集日志而 sqoop 主要用来做数据迁移
B. flume 主要采集流式数据而 sqoop 主要用来迁移规范化数据
C. flume 和 sqoop 都是分布式处理任务☑️
D. flume 主要用于采集多数据源小数据而 sqoop 用来迁移单数据源数据

1. 以下不属于 Flume 的 Source 类型的是
A. exec source
B. file source☑️
C. spooling directory source
D. kafka source

1. 有关 Elasticsearch 特性描述有误的一项是
A. 分布式实时文件存储，可将每一个字段存入索引
B. 实时分析的分布式搜索引擎。
C. 支持插件机制，分词插件. 同步插件
D. 以上都不正确☑️

1. 下列不属于 kafka 应用场景的是
A. 常规的消息收集
B. 网站活动性跟踪
C. 日志收集
D. 关系型数据库和大数据平台之间的数据迁移☑️

1. TDH 提供哪几种认证模式？
A. 所有服务使用简单认证模式——所有服务都无需认证即可互相访问☑️
B. 所有服务都启用 Kerberos 认证，用户要提供 Kerberos principal 和密码（或者
keytab）来访问各个服务☑️
C. 所有服务都启用 Kerberos 同时 Inceptor 启用 LDAP 认证☑️
D. 所有服务都启用 LDAP 认证

1. 在安装有 kerberos 服务的集群中如何切换用户
A. 不需要切换，所有用户都为服务公用用户，可以直接使用。
B. 直接使用 kinit 用户名称方式进行切换☑️
C. 必须先 destroy ，才能再使用 kinit 用户名称 方式登录
D. 以上都不正确

1. 以下对 Transwarp Manager 描述不正确的是
A. Transwarp Manger 是 TDH 的管理运维平台
B. 通过 Transwarp Manager 的 8180 界面登入
C. 在 Transwarp Manager 上能启动和停止 Transwarp Agent 角色☑️
D. 在 Transwarp Manager 上能对 Inceptor 表进行赋权操作

1. 以下对 Hadoop 组件的应用场景描述正确的是
A. Hive 主要用于构建大数据数仓，主要做批处理. 统计分析型业务☑️
B. Hbase 主要用于检索查询的 OLTP 业务☑️
C. ElasticSearch 主要用于全文检索的关键字查询业务☑️
D. Spark Streaming 主要用于实时数据的业务场景☑️

1. 某电信部门有 100 亿条用户过往使用通讯记录，现需要提供客户终端根据电话号精 确查询历史通讯，满足用户同时并发访问，则该表应该设计为
A. Hyperbase 表+全局索引☑️
B. Hyperbase 表+es 索引
C. Es 表+es 索引
D. 以上方式都可以

1. 可以安装 TDH 的操作系统有？
A. SUSE SP2-SP3。☑️
B. Win7/Win10。
C. CentOS 6.3-6.5。☑️
D. REHL 6.3-6.5。☑️

### 练习题库(三)

1. 下列与 HDFS 有关的说法正确的是
A. HDFS DataNode 节点上的磁盘需要做 RAID1，用来保证数据的可靠性
B. HDFS 可以在磁盘之间通过 balance 操作，平衡磁盘之间的负载情况
C. HDFS 建议 DataNode 之间的数据盘个数. 容量大小不一致，以体现 HDFS 的负载 均衡能力
D. 规划 HDFS 集群时，建议 Active NameNode 和 Standby NameNode 分配在不同的 机架上☑️

1. NameNode 用于存储 HDFS 上数据块的元数据信息，它保存的数据形式是
A. block
B. fsimage☑️
C. editlog☑️
D. blockid

1. 在集群中配置 HDFS 的副本数为 3，设置数据块大小为 128M，此时我们上传一份 64M 的数据文件，该数据文件占用 HDFS 空间大小为
A. 64M
B. 128M
C. 384M☑️
D. 192M

1. 下列对 YARN 角色在集群中的作用描述正确的是
A. 集群资源管理☑️
B. 集群任务调度与管理☑️
C. 存储部分 HDFS 上的数据块
D. 以上都正确

1. YARN 框架中，负责集群资源管理的组件是
A. ResourceManager☑️
B. NodeManager
C. Container
D. JobTracker

1. MapReduce 计算框架的特点包括
A. 自动化并行和分布式计算
B. 出错容忍度高
C. 优先数据本地化计算
D. 以上都是☑️

1. 以下关于外表和托管表描述正确的是
A. 外表的数据存储在本地，托管表的数据存储在 hdfs 上
B. 删除托管表只会删除 Inceptor 上的元数据不会删除数据文件，删除外表两者都会 被删除
C. 删除外表只会删除 Inceptor 上的元数据不会删除数据文件，删除托管表两者都会 被删除☑️
D. 删除托管表或外表，incepotr 上的元数据和数据文件都会被删除

1. 以下关于 Inceptor 数据倾斜场景正确的处理方式有
A. 对于数据倾斜的 SQL 重新跑一次即可解决
B. 剔除引起数据倾斜的数据，再重新执行 SQL
C. 导入数据期间格式转换出现错误引起 null 过多，可以通过重新清理数据解决☑️
D. 将一起数据倾斜的数据和剩下的数据单独运行，再通过 union 合并的方式解决☑️

1. 以下关于 inceptor 日志信息描述正确的有
A. Inceptor server 日志存放于各节点的/var/log/inceptorsql[x]/hive-server.log☑️
B. 可以通过 inceptor server 4040 查看 SQL 错误日志☑️
C. Excutor 日志存放于 excutor 节点的/var/log/inceptorsql[x]/spark-excutor.log☑️
D. ExcutorGC 日志存放于 excutor 节点的/var/log/inceptorsql[x]/spark-excutor.gc.log☑️

1. 假设使用场景中有如下查询语句
```sql
SELECT Sex, Region, COUNT(ID), AVG (Salary)
FROM Employee
WHERE Department = 'IT'
GROUP BY Sex, Region
ORDER BY Sex, Region;
```
通过 holodesk 的 cube 和 index 手段对这种过滤率和聚合率高的业务进行优化，以下建表 正确的是
```sql
A. ☑️CREATE TABLE Employee
TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex, Region')

B. CREATE TABLE Employee
TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Sex, Region'
'holodesk.dimension' = 'Department' )

C. CREATE TABLE Employee TBLPROPERTIES (
'cache' = 'Department',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex, Region')

D. CREATE TABLE Employee TBLPROPERTIES (
'cache' = 'RAM',
'holodesk.index' = 'Department',
'holodesk.dimension' = 'Sex' )
```

1. 以下属于 HMaster 功能的是
A. 为 Region Server 分配 region☑️
B. 存储数据元信息
C. 对 region 进行 compact 操作
D. 管理用户对 table 的增删改查操作☑️

1. 有关 Minor Compact 的描述正确的是
A. 一个 store 下的所有文件合并
B. 删除过期版本数据
C. 删除 delete marker 数据
D. 把多个 HFile 合成一个☑️

1. 下列创建全局索引的语句，正确的是
```sql
A. add_index 't1', 'index_name','COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'

B. add_global_index 't1', 'index_name','COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'☑️

C. add_fulltext_index 't1', 'index_name','COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true';

D. create_global_index 't1', 'index_name','COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'
```

1. 以下对流处理计算框架描述不正确的是
A. Spark Streaming 是基于微批（batch）对数据进行处理的
B. Apache Storm 是基于时间（event）对数据进行处理的
C. Transwarp StreamSQL 可基于微批或事件对数据进行处理
D. 以上说法都不对☑️

1. 某交通部门通过使用流监控全市过往 24 小时各个卡口数据，要求每分钟更新一次， 原始流为 org_stream，以下实现正确的是
```sql
A. CREATE STREAMWINDOW traffic_stream AS SELECT * FROM original_stream
STREAM w1 AS (length '1' minute slide '24' hour);

B. CREATE STREAM traffic_stream AS SELECT * FROM original_stream
STREAMWINDOW w1 AS (length '1' minute slide '24' hour);

C. ☑️CREATE STREAM traffic_stream AS SELECT * FROM original_stream
STREAMWINDOW w1 AS (length '24' hour slide '1' minute);

D. CREATE STREAM traffic_stream AS SELECT * FROM original_stream AS (length '24'
second slide '1' minute);
```
1. 以下不是 Zookeeper 的功能是
A. 配置管理
B. 集群管理
C. 分布式锁
D. 存储大量数据☑️

1. 关于 Hue 对 hive server 的支持度描述正确的是
A. 只支持 hive server1
B. 只支持 hive server2☑️
C. 同时支持 hive server1 和 hive server2
D. 只支持开启 LDAP 的 hive server2

1. 以下关于 oozie 三个编辑器说法正确的是
A. bundle 构建在 workflow 工作方式之上，提供定时运行和触发运行任务的功能。
B. bundle 将多个 workflow 管理起来，这样我们只需提供一个 bundle 提交即可
C. workflow 是最简单的一种工作方式☑️
D. coordinator 可以包含一到多个 workflow☑️

1. 有关使用 sqoop 抽取数据的原理的描述不正确的是
A. sqoop 在抽取数据的时候可以指定 map 的个数，map 的个数决定在 hdfs 生成的 数据文件的个数
B. sqoop 抽取数据是个多节点并行抽取的过程，因此 map 的个数设置的越多性能 越好☑️
C. sqoop 任务的切分是根据 split 字段的（最大值-最小值）/map 数
D. sqoop 抽取数据的时候需要保证执行当前用户有权限执行相应的操作

1. 下面与 sqoop 做数据迁移有关的描述不正确的是
A. sqoop 做数据迁移的主要瓶颈在网络带宽和 RDB 的 IO 限制
B. sqoop 抽取数据是个多节点并行抽取的过程，因此 map 的个数设置的越多性能越 好☑️
C. sqoop 抽取数据分为全量抽取和增量抽取两种
D. 当-m 大于 1 时，就必须要设置--split-by 字段

1. 下列有关 flume 的描述不正确的是
A. flume 是 Apache 的一个子项目
B. flume 主要是一个日志采集，传输系统
C. flume 和 sqoop 功能相似，因此可以相互替代☑️
D. flume 可以同时采集集群内部和集群外部的日志数据

1. 下列是关于 flume 和 sqoop 对比的描述，不正确的是
A. flume 主要用来采集日志而 sqoop 主要用来做数据迁移
B. flume 主要采集流式数据而 sqoop 主要用来迁移规范化数据
C. flume 和 sqoop 都是分布式处理任务☑️
D. flume 主要用于采集多数据源小数据而 sqoop 用来迁移单数据源数据

1. 以下对 ElasticSearch 描述不正确的是
A. ElasticSearch 是分布式全文搜索引擎
B. ElasticSearch 集群中分 master 和 data 节点
C. ElasticSearch 数据存储在 HDFS 上☑️
D. ElasticSearch 数据可以按 Shard 分布在不同的节点上

1. 下列不属于 kafka 应用场景的是
A. 常规的消息收集
B. 网站活动性跟踪
C. 日志收集
D. 关系型数据库和大数据平台之间的数据迁移☑️

1. TDH 提供哪几种认证模式？
A. 所有服务使用简单认证模式——所有服务都无需认证即可互相访问☑️
B. 所有服务都启用 Kerberos 认证，用户要提供 Kerberos principal 和密码（或者
keytab）来访问各个服务☑️
C. 所有服务都启用 Kerberos 同时 Inceptor 启用 LDAP 认证☑️
D. 所有服务都启用 LDAP 认证

1. 以下属于 Guardian 的功能是
A. 用户管理☑️
B. 用户认证☑️
C. 审计☑️
D. 权限管理☑️

1. Inceptor server 服务无法启动时，该如何查看日志是
A. 查看 TDH manager 所在节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志
B. 查看 Inceptor server 所在节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志☑️
C. 查 看 Resource Manager 所 在 节 点 /var/log/Yarn*/ 目 录 下 的
yarn-yarn-resourcemanager-poc-node1.log 日志
D. 查看任意节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志

1. 以下对 Hadoop 组件的应用场景描述正确的是
A. Hive 主要用于构建大数据数仓，主要做批处理. 统计分析型业务☑️
B. Hbase 主要用于检索查询的 OLTP 业务☑️
C. ElasticSearch 主要用于全文检索的关键字查询业务☑️
D. Spark Streaming 主要用于实时数据的业务场景☑️

1. 现有一个表数据要存储在 hyperbase 上，并创建全文索引，原表数据 10GB，HDFS 配置为 3 副本，hyperbase 压缩比例按 1:3 计算，索引数据量为 20GB，ES 副本数为 1， ES 压缩比按 1:3 计算，则该表需要多大的存储空间存储
A. 16.67GB
B. 23.33GB☑️
C. 30GB
D. 70GB

1. 下面哪些工作不属于集群预安装工作
A. 为集群中每个节点的安装操作系统
B. 选一个节点作为管理节点，修改其/etc/hosts 文件
C. 安装 Transwarp Manager 管理界面
D. 配置集群安全模式☑️

### 练习题库(四)

1. 下列与 HDFS 有关的说法正确的是
A. HDFS DataNode 节点上的磁盘需要做 RAID1，用来保证数据的可靠性
B. HDFS 可以在磁盘之间通过 balance 操作，平衡磁盘之间的负载情况
C. HDFS 建议 DataNode 之间的数据盘个数. 容量大小不一致，以体现 HDFS 的负载 均衡能力
D. 规划 HDFS 集群时，建议 Active NameNode 和 Standby NameNode 分配在不同的 机架上☑️

1. 以下哪个服务作为 HDFS 高可靠协调服务的共享存储？
A. ZooKeeper
B. JournalNodes☑️
C. NameNode
D. ZKFailoverController

1. 在集群中配置 HDFS 的副本数为 3，设置数据块大小为 128M，此时我们上传一份 64M 的数据文件，该数据文件占用 HDFS 空间大小为
A. 64M
B. 128M
C. 384M☑️
D. 192M

1. 在 Yarn 服务中，不包含以下哪种角色
A. ResourceManager
B. NodeManager
C. ApplicationMaster
D. Contianer☑️

1. ResourceManager 是 YARN 的主要组成部分，有关其功能描述不正确的是
A. 它直接将集群所拥有的资源按需分配给运行在 YARN 上的应用程序☑️
B. 它负责将集群中的所有资源进行统一管理和分配
C. 它接受各个节点的资源汇报信息
D. 它把资源按照策略分配给各应用

1. 当前用户提交了一个 wordcount 词频统计的任务，最后任务执行失败，可能的原因有 哪些
A. 当前集群中没有足够的资源，不足以满足当前 wordcount 任务的需求
B. 执行该任务的用户没有权限访问 HDFS 上的数据文件
C. 用户在执行任务之前在 HDFS 相应的目录下创建了提交任务时指定的输出目录
D. 以上原因都有可能☑️

1. 以下关于外表和托管表描述正确的是
A. 外表的数据存储在本地，托管表的数据存储在 hdfs 上
B. 删除托管表只会删除 Inceptor 上的元数据不会删除数据文件，删除外表两者都会 被删除
C. 删除外表只会删除 Inceptor 上的元数据不会删除数据文件，删除托管表两者都会 被删除☑️
D. 删除托管表或外表，incepotr 上的元数据和数据文件都会被删除

1. SQL 运行中如果出现 maptask 数据特别多，执行时间又很短时可以通过小文件合并来 进行优化，以下是合并参数有
A. SET ngmr.partition.automerge = TRUE;☑️
B. SET ngmr.partition.mergesize = n;☑️
C. SET ngmr.partition.mergesize.mb = m;☑️
D. SET mapred.reduce.tasks = N;

1. 以下关于 inceptor 日志信息描述正确的有
A. Inceptor server 日志存放于各节点的/var/log/inceptorsql[x]/hive-server.log☑️
B. 可以通过 inceptor server 4040 查看 SQL 错误日志☑️
C. Excutor 日志存放于 excutor 节点的/var/log/inceptorsql[x]/spark-excutor.log☑️
D. ExcutorGC 日志存放于 excutor 节点的/var/log/inceptorsql[x]/spark-excutor.gc.log☑️

1. tableA 有 10G 的数据，tableB 有 100G 的数据，两个表通过共有的 id 列做关联查询 name 列，以下方式可以优化计算效率的是
A. select /*+MAPJOIN(a)*/ a.name,b.name from tableA a join tableB b on a.id=b.id
B. select /*+MAPJOIN(b)*/ a.name,b.name from tableA a join tableB b on a.id=b.id
C. 建表时将 tableA 和 tableB 根据 id 字段分相同数量的桶☑️
D. 建表时将 tableA 和 tableB 根据 name 字段分相同数量的桶

1. 以下属于 HMaster 功能的是
A. 为 Region Server 分配 region☑️
B. 存储数据元信息☑️
C. 对 region 进行 compact 操作
D. 管理用户对 table 的增删改查操作

1. Hyperbase 与 Inceptor 的关系，描述正确的是
A. 两者不可或缺，Inceptor 保证 Hyperbase 的服务的正常运行
B. 两者没有任何关系
C. Inceptor 可以访问 Hyperbase☑️
D. 两者相辅相成☑️

1. 下列创建全局索引的语句，正确的是
```sql
A. add_index 't1', 'index_name',
'COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'

B. ☑️add_global_index 't1', 'index_name',
'COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'

C. add_fulltext_index 't1', 'index_name',
'COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'

D. create_global_index 't1', 'index_name',
'COMBINE_INDEX|INDEXED=f1:q1:9|rowKey:rowKey:10,UPDATE=true'
```

1. 以下对流处理计算框架描述不正确的是
A. Spark Streaming 是基于微批（batch）对数据进行处理的 
B. Apache Storm 是基于时间（event）对数据进行处理的
C. Transwarp StreamSQL 可基于微批或事件对数据进行处理 
D. 以上说法都不对☑️

1. 某交通部门通过使用流监控全市过往 24 小时各个卡口数据，要求每分钟更新一次， 原始流为 org_stream，以下实现正确的是
```sql
A. CREATE STREAMWINDOW traffic_stream AS SELECT * FROM original_stream
STREAM w1 AS (length '1' minute slide '24' hour);

B. CREATE STREAM traffic_stream AS SELECT * FROM original_stream
STREAMWINDOW w1 AS (length '1' minute slide '24' hour);

C. ☑️CREATE STREAM traffic_stream AS SELECT * FROM original_stream
STREAMWINDOW w1 AS (length '24' hour slide '1' minute);

D. CREATE STREAM traffic_stream AS SELECT * FROM original_stream AS (length '24'
second slide '1' minute);
```
1. Zookeeper 服务描述正确的为
A. Zookeeper 中每一个 server 互为 leader。
B. Zookeeper 中只有一个 leader，并通过备份机制产生。
C. Zookeeper 中不存在 leader,所有 server 共同提供服务。
D. Zookeeper 通过选举机制确定 leader，有且仅有一个。☑️

1. 通过 Hue 修改 HDFS 目录或文件的权限可以通过以下哪些方式实现
A. Hdfs 相应的权限☑️
B. 通过 Hue 超级用户 hue 登录
C. 以 hdfs 用户登录☑️
D. 以上都可以

1. 通过 Oozie 使用 ssh，必须满足以下条件
A. 以 root 用户登录各个节点
B. Oozie 用户可以免密钥登录☑️
C. Oozie 用户必须要有 bash 权限☑️
D. 所访问必须是集群的节点

1. 有关使用 sqoop 抽取数据的原理的描述不正确的是
A. sqoop 在抽取数据的时候可以指定 map 的个数，map 的个数决定在 hdfs 生成的 数据文件的个数
B. sqoop 抽取数据是个多节点并行抽取的过程，因此 map 的个数设置的越多性能 越好☑️
C. sqoop 任务的切分是根据 split 字段的（最大值-最小值）/map 数
D. sqoop 抽取数据的时候需要保证执行当前用户有权限执行相应的操作

1. 在使用 sqoop 连接关系型数据时，下面哪个命令可以查看关系型数据库中有哪些表？
```
A. sqoop list-databases
--username root
--password 111111
--connect jdbc:mysql://192.168.164.25:3306/

B. sqoop list-databases
--username root
-P
--connect jdbc:mysql://192.168.164.25:3306/

C. sqoop list-databases
--username root
--password-file file:/root/.pwd
--connect jdbc:mysql://192.168.164.25:3306/

D. ☑️sqoop list-tables
--username root
--password 111111
--connect jdbc:mysql://192.168.164.25:3306/test
```

1. 要将采集的日志数据作为 kafka 的数据源，则 flume sink 需要设置为下列哪项参数
A. hdfs
B. kafka
C. org.apache.flume.sink.kafka.KafkaSink☑️
D. {topicname}

1. 下列是关于 flume 和 sqoop 对比的描述，不正确的是
A. flume 主要用来采集日志而 sqoop 主要用来做数据迁移
B. flume 主要采集流式数据而 sqoop 主要用来迁移规范化数据
C. flume 和 sqoop 都是分布式处理任务☑️
D. flume 主要用于采集多数据源小数据而 sqoop 用来迁移单数据源数据

1. 有关 Elasticsearch 描述有误的一项是
A. 它会利用多播形式发现节点。
B. 主节点(master node) 通过选举方式产生。
C. 主节点(master node)进行集群的管理，只负责集群节点添加和删除。☑️
D. 主节点会去读集群状态信息，必要的时候进行恢复工作。

1. 下面措施中，不能保证 kafka 数据可靠性的是
A. kafka 会将所有消息持久化到硬盘中保证其数据可靠性
B. kafka 通过 Topic Partition 设置 Replication 来保证其数据可靠性
C. kafka 通过设置消息重发机制保证其数据可靠性
D. kafka 无法保证数据可靠性☑️

1. TDH 提供哪几种认证模式？
A. 所有服务使用简单认证模式——所有服务都无需认证即可互相访问☑️
B. 所有服务都启用 Kerberos 认证，用户要提供 Kerberos principal 和密码（或者keytab）来访问各个服务☑️
C. 所有服务都启用 Kerberos 同时 Inceptor 启用 LDAP 认证☑️
D. 所有服务都启用 LDAP 认证

1. 开启 LDAP 后，应该使用哪个命令连接 Inceptor
A. transwarp -t -h $ip。
B. beeline -u jdbc:hive2://$ip:10000 -n $username -p $password。☑️
C. beeline -u "jdbc:hive2://$ip:10000/default;principal=hive/node1@TDH"。
D. beeline -u "jdbc:hive2://$ip:10000/default;principal=user1@TDH"。

1. Inceptor server 服务无法启动时，该如何查看日志是
A. 查看 TDH manager 所在节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志
B. 查看 Inceptor server 所在节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志☑️
C. 查 看 Resource Manager 所 在 节 点 /var/log/Yarn*/ 目 录 下 的yarn-yarn-resourcemanager-poc-node1.log 日志
D. 查看任意节点/var/log/inceptorsql*/目录下的 hive-server2.log 日志

1. 现有一批数据需要进行清洗，要求对其中 null 通过 update 转换为 0，删除重复的记 录，添加部分新的记录，则该表应该设计为
A. Tex 表
B. Orc 表
C. Orc 事务表☑️
D. Holodesk 表

1. 现有一个表数据要存储在 hyperbase 上，并创建全文索引，原表数据 10GB，HDFS 配置为 3 副本，hyperbase 压缩比例按 1:3 计算，索引数据量为 20GB，ES 副本数为 1， ES 压缩比按 1:3 计算，则该表需要多大的存储空间存储
A. 16.67GB
B. 23.33GB☑️
C. 30GB
D. 70GB

1. 下面哪些工作不属于集群预安装工作
A. 为集群中每个节点的安装操作系统
B. 选一个节点作为管理节点，修改其 /etc/hosts 文件
C. 安装 Transwarp Manager 管理界面
D. 配置集群安全模式☑️

### 问答题 
1. 集群有 8 个节点，每个节点有 8 块硬盘（默认 3 副本）。如果某个节点有 3 块盘损坏，是否可能存在数据块丢失情况；如果有 3 个节点发生故障，是否可能存在数据块丢失情况；并简述原因。
2. 请描述 TDH 平台中在 Yarn 上可以使用哪几种调度策略，并分别阐述各调度策略的特点。
```
FIFO Scheduler（先进先出调度器）：(策略)将所有任务放入一个队列，先进队列的先获得资源，排在后面的任务只有等待。(缺点)－资源利用率低，无法交叉运行任务。－灵活性差。

Capacity Scheduler（容量调度器）：(思想)提前做预算，在预算指导下分享集群资源。(策略)集群资源由多个队列分享。每个队列都要预设资源分配的比例（提前做预算）。空闲资源优先分配给“实际资源/预算资源”比值最低的队列。队列内部采用FIFO调度策略。(特点)层次化的队列设计。容量保证：每个队列都要预设资源占比，防止资源独占。弹性分配：空闲资源可以分配给任何队列，当多个队列争用时，会按比例进行平衡。支持动态管理。访问控制。多租户：多用户共享集群资源。

Fair Scheduler（公平调度器）：（调度策略)多队列公平共享集群资源。通过平分的方式，动态分配资源，无需预先设定资源分配比例。队列内部可配置调度策略：FIFO、Fair（默认）。
```
3. 请描述一个 100GB 文件写入 HDFS 的整个过程（使用 bulkload 方式实现）
```
抽取：从数据源中抽取数据
对于MySQL，运行mysqldump命令导出数据

转换：利用MapReduce，将数据转换为HFile文件
对于TSV或CSV文件，使用HBase ImportTsv工具将其转换成HFile文件 －每个输出文件夹中的每个区域都会创建一个HFile文件

加载：将HFile文件加载到HBase
利用HBase CompleteBulkLoad工具，将HFile文件移动到HBase表的相应目录中，完成加载

具体来说：
1)客户端发送创建文件指令给分布式文件系统
2)文件系统告知namenode (检查权限，查看文件是否存在。EditLog增加记录。返回输出流对象)
3)客户端往输出流中写入数据,分成一个个数据包
4)根据namenode分配,输出流往datanode写数据(多个datanode构成一个管道pipeline,输出流写第一个,后面的转发)
4)每个datanode写完一个块后，返回确认信息
5)写完数据，关闭输出流
6)发送完成信号给namenode
```
4. 请以 WordCount 为例描述 MapReduce 的运行过程，并列出 Spark 相较 MapReduce 的 优势
```
过程：todo

优势：基于内存计算RDD;基于DAG优化任务流程(延迟计算);易于部署,更低的框架开销;丰富的API支持。
```
5. 写出以下场景下的优化思路 
a. 假设在 Inceptor 上执行任务，发现 Map Task 数量多、执行时间短，应采取哪种措施来提升性能？
```
对数据块进行合并：Automerge（碎片自动合并）
```
b. 请简述在 Inceptor 中大表与大表做 join、大表与小表做 join 时分别有哪些优化手段
```
大表与大表的普通JOIN：实现普通JOIN的过程是这样的：扫描过滤两张表的数据（Map Stages），然后通过Shuffle将Key哈希值相同的数据分发到各个节点，在各节点内部执行JOIN（Reduce Stages）

MapJoin是一种针对大表与小表JOIN的特殊实现方式，在大小表数据量悬殊的情况下能有效的提升JOIN执行效率，一般受优化开关或者Hint控制启动。
```
6. 请列出 TDH 下的 4 大组件（Inceptor、Hyperbase、StreamSQL、Discover）的特性以及适用场景。
7. 假设集群的每个节点初始有 6 块硬盘，运行一段时间后，每个节点又加了 4 块新硬盘， 为了使数据在所有硬盘上分布均匀，能否通过 hdfs balancer 达到效果，为什么？并列出能达到效果的两种措施。
```
不能，旧版本的hdfs仅支持节点间的数据平衡，新版本可通过balancer实现
1.手动重写所有数据  2.将数据全部移到几个节点上，再在节点间数据平衡
```
8. 请描述高并发检索和综合搜索的场景特点，这两种场景应使用哪种技术来做支撑， 并指出数据和索引各自的存储位置。
9.  请描述 HDFS 的高可用性实现机制
10. 请列举出平台支持的 5 种存储格式/引擎的表，并详细描述各自的存储特点、使用场景、支持的操作以及是否支持分区分桶
```
Text 表：
ORC 表：
事务表：
HoloDesk 表：
Hyperbase 表：
```