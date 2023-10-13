# ElasticSearch

## 源

### 源文档

> * [<font color="violet">项目课程系列之Elasticsearch.docx</font>](./相关资料/项目课程系列之Elasticsearch.docx)
> * [<font color="violet">项目课程系列之Elasticsearch.pdf</font>](./相关资料/项目课程系列之Elasticsearch.pdf)

### 图

> * [<font color="violet">elasticsearch.drawio</font>](./相关资料/elasticsearch.drawio)

## 安装

> ​	一个 Elasticsearch 集群有一个唯一的名字标识，这个名字默认就是”elasticsearch”。这个名字是重要的，因为一个节点只能通过指定某个集群的名字，来加入这个集群。

### windows安装

#### 单机

> 直接解压压缩包，点击其目录中`/bin/elasticsearch.bat`即可启动
>
> ![1693997525656](ElasticSearch.assets/1693997525656.png)
>
> ![1693997662595](ElasticSearch.assets/1693997662595.png)
>
> ![1694078854992](ElasticSearch.assets/1694078854992.png)

> 注：
>
> ​	Elasticsearch是使用 java 开发的，且 7.8 版本的ES 需要 JDK 版本 1.8 以上，默认安装包带有 jdk 环境，如果系统配置 JAVA_HOME，那么使用系统默认的 JDK，如果没有配置使用自带的JDK，一般建议使用系统配置的JDK。

#### 集群

复制单机的文件夹，删除每个文件夹下的data目录，以及logs目录下的日志

* node1001

  ```yml
  #节点 1 的配置信息：
  #集群名称，节点之间要保持一致 
  cluster.name: my-elasticsearch #节点名称，集群内要唯一 
  node.name: node-1001
  node.master: true
  node.data: true
  
  #ip 地址
  network.host: localhost #http 端口
  http.port: 1001 #tcp 监听端口
  transport.tcp.port: 9301
  
  #discovery.seed_hosts: ["localhost:9301", "localhost:9302","localhost:9303"] 
  #discovery.zen.fd.ping_timeout: 1m
  #discovery.zen.fd.ping_retries: 5
  
  #集群内的可以被选为主节点的节点列表 
  #cluster.initial_master_nodes: ["node-1", "node-2","node-3"]
  
  #跨域配置 
  #action.destructive_requires_name: true 
  http.cors.enabled: true 
  http.cors.allow-origin: "*"
  ```

* node1002

  ```yml
  #节点 2 的配置信息：
  #集群名称，节点之间要保持一致 
  cluster.name: my-elasticsearch #节点名称，集群内要唯一 
  node.name: node-1002
  node.master: true
  node.data: true
  
  #ip 地址
  network.host: localhost #http 端口
  http.port: 1002 #tcp 监听端口
  transport.tcp.port: 9302
  
  discovery.seed_hosts: ["localhost:9301"] 
  discovery.zen.fd.ping_timeout: 1m 
  discovery.zen.fd.ping_retries: 5
  
  #集群内的可以被选为主节点的节点列表
  #cluster.initial_master_nodes: ["node-1", "node-2","node-3"]
  
  #跨域配置 
  #action.destructive_requires_name: true
  http.cors.enabled: true 
  http.cors.allow-origin: "*"
  ```

* node1003

  ```yml
  #节点 3 的配置信息：
  #集群名称，节点之间要保持一致 
  cluster.name: my-elasticsearch #节点名称，集群内要唯一 
  node.name: node-1003 
  node.master: true
  node.data: true
  
  #ip 地址
  network.host: localhost #http 端口
  http.port: 1003 #tcp 监听端口
  transport.tcp.port: 9303
  #候选主节点的地址，在开启服务后可以被选为主节点
  discovery.seed_hosts: ["localhost:9301", "localhost:9302"]
  discovery.zen.fd.ping_timeout: 1m
  discovery.zen.fd.ping_retries: 5
  
  #集群内的可以被选为主节点的节点列表
  #cluster.initial_master_nodes: ["node-1", "node-2","node-3"]
  
  #跨域配置
  #action.destructive_requires_name: true
  http.cors.enabled: true
  http.cors.allow-origin: "*"
  ```

启动后的检测方法

![1695536378402](ElasticSearch.assets/1695536378402.png)

![1695536397090](ElasticSearch.assets/1695536397090.png)

> status字段表示当前集群在总体上是否工作正常，有三种颜色
>
> * green：所有的主分片和副分片都正常运行。
> * yellow：所有主分片都正常运行，但不是所有副分片都正常运行。
> * red：有主分片没有正常运行



### Linux安装

压缩包形式安装，解压。

解压后修改配置文件

conf/elasticsearch.yml

```yml
#集群名称
cluster.name: cluster-es
#节点名称，每个节点的名称不能重复
node.name: node151
#ip 地址，每个节点的地址不能重复
network.host: node151
#是不是有资格主节点 
node.master: true 
node.data: true 
http.port: 9200
# head 插件需要这打开这两个配置
http.cors.allow-origin: "*"
http.cors.enabled: true
http.max_content_length: 200mb
# #es7.x 之后新增的配置，初始化一个新的集群时需要此配置来选举 master
cluster.initial_master_nodes: ["node151"] 
#es7.x 之后新增的配置，节点发现
discovery.seed_hosts: ["node151:9300","node152:9300","node153:9300"]
gateway.recover_after_nodes: 2
network.tcp.keep_alive: true
network.tcp.no_delay: true
transport.tcp.compress: true
#集群内同时启动的数据任务个数，默认是 2 个
cluster.routing.allocation.cluster_concurrent_rebalance: 16
#添加或删除节点及负载均衡时并发恢复的线程个数，默认 4 个
cluster.routing.allocation.node_concurrent_recoveries: 16
#初始化数据恢复时，并发恢复线程的个数，默认 4 个
cluster.routing.allocation.node_initial_primaries_recoveries: 16
```

修改/etc/security/limits.conf并分发

```conf
# 在文件末尾中增加下面内容
es soft nofile 65536
es hard nofile 65536
```

修改/etc/security/limits.d/20-nproc.conf，分发文件

```conf
# 在文件末尾中增加下面内容
es soft nofile 65536
es hard nofile 65536
* hard nproc 4096
# 注：* 带表 Linux 所有用户名称
```

修改/etc/sysctl.conf并分发

```conf
# 在文件中增加下面内容
vm.max_map_count=655360
```

重新加载（都执行）

```shell
sysctl -p
```

创建用户，并修改文件所属

```shell
useradd es #新增 es 用户
passwd es #为 es 用户设置密码

userdel -r es #如果错了，可以删除再加
chown -R es:es /opt/module/es-cluster #文件夹所有者
```

启动

```shell
cd /opt/module/es-cluster 
#启动
bin/elasticsearch 
#后台启动
bin/elasticsearch -d
```

验证

![1695540971659](ElasticSearch.assets/1695540971659.png)



## 相关概念

> * Elasticsearch 主要支持倒排索引
>
> * Elasticsearch 是基于Lucene 搭建的
>
>   * > Lucene 是当前以及最近几年最受欢迎的免费 Java 信息检索程序库。但 Lucene 只是一个提供全文搜索功能类库的核心工具包，而真正使用它还需要一个完善的服务框架搭建起来进行应用。
>
> * Elasticsearch 主要基于Restful风格进行开发
>
>   * > REST指的是一组架构约束条件和原则。满足这些约束条件和原则的应用程序或设计就是 RESTful。
>     >
>     > ​	在 REST 样式的 Web 服务中，每个资源都有一个地址。资源本身都是方法调用的目标，方法列表对所有资源都是一样的。这些方法都是标准方法，包括 HTTP GET、POST、 PUT、DELETE，还可能包括 HEAD 和 OPTIONS。简单的理解就是，如果想要访问互联网上的资源，就必须向资源所在的服务器发出请求，请求体中必须包含资源的网络路径，以及对资源进行的操作(增删改查)。

> 常用端口
>
> | 端口 | 作用                               |
> | ---- | ---------------------------------- |
> | 9300 | 集群间组件的通信端口               |
> | 9200 | 浏览器访问的 http协议 RESTful 端口 |

### 数据格式

![1694079037668](ElasticSearch.assets/1694079037668.png)

Elasticsearch 是面向文档型数据库，一条数据在这里就是一个文档。

ES 里的 Index 可以看做一个库，而Types 相当于表，Documents 则相当于表的行。这里Types 的概念已经被逐渐弱化，Elasticsearch 6.X 中，一个 index 下已经只能包含一个type，Elasticsearch 7.X 中, Type 的概念已经被删除了。

Elasticsearch用 JSON 作为文档序列化的格式，比如一条用户信息

```json
{
	"name" : "John",
	"sex" : "Male", "age" : 25,
	"birthDate": "1990/05/01",
	"about" : "I love to go rock climbing", "interests": [ "sports", "music" ]
}
```

### 索引（Index）

> * 一个索引就是一个拥有几分相似特征的文档的集合。
> * 一个索引由一个名字来标识（必须全部是小写字母），并且当我们要对这个索引中的文档进行索引、搜索、更新和删除的时候，都要使用到这个名字。

### 类型（Type）

注：7.x之后取消

> * 一个索引可以定义一种或多种类型。
> * 通常，会为具有一组共同字段的文档定义一个类型。
> * 通常是一个逻辑上的分类/分区。

| 版本 | Type                                           |
| ---- | ---------------------------------------------- |
| 5.x  | 支持多种 type                                  |
| 6.x  | 只能有一种 type                                |
| 7.x  | 默认不再支持自定义索引类型（默认类型为：_doc） |

### 文档（Document）

> * 一个文档是一个可被索引的基础信息单元，也就是一条数据
> * 文档以 JSON（Javascript Object Notation）格式来表示
> * 在一个 index/type 里面，你可以存储任意多的文档。

### 字段（Field）

> * 相当于是数据表的字段，对文档数据根据不同属性进行的分类标识

### 映射（Mapping）

> * mapping 是处理数据的方式和规则方面做一些限制
>   * 如：某个字段的数据类型、默认值、分析器、是否被索引等等。
>   * 处理ES 里面数据的一些使用规则设置也叫做映射，按着最优规则处理数据对性能提高很大。

### 分片（Shards）

> 特性
>
> * 创建索引时可以指定分片的数量（分片数量一旦确定，无法更改）
> * 每个分片本身也是一个功能完善并且独立的“索引”，这个“索引”可以被放置到集群中的任何节点上。
>
> 优点：
>
> * 水平分割，扩容
> * 可以在分片之上进行分布式的、并行的操作，进而提高性能/吞吐量。
>
> > 注：易被混淆的概念是，
> > 一个是Lucene索引，我们在Elasticsearch称作分片 。 一个Elasticsearch索引 是分片的集合。 当Elasticsearch在索引中搜索的时候， 他发送查询到每一个属于索引的分片(Lucene索引)，然后合并每个分片的结果到一个全局的结果集。

### 副本（Replicas）

> 副本是分片的副本。
> 注：副本不能在同一台机器上。
>
> 优点：
>
> * 提高可用性（容错）
> * 搜索可以在副本上执行，所以可以提高搜索吞吐量

#### 单节点

设置单节点三分片、一副本

```json
{
    "settings": {
        "number_of_shards": 3,
        "number_of_replicas": 1
    }
}
```

![1696656524889](ElasticSearch.assets/1696656524889.png)

#### 故障转移

两个结点就可以使副本生效，让副本和主分片不在同一个字段上。

> 下图中，粗边框是主分片。

![1696660098118](ElasticSearch.assets/1696660098118.png)

#### 水平扩容

> 可以极大吞吐量

![1696660870959](ElasticSearch.assets/1696660870959.png)

设置副本数后

![1696661037848](ElasticSearch.assets/1696661037848.png)

![1696661510470](ElasticSearch.assets/1696661510470.png)



## 相关原理

### 路由计算

![1696662226358](ElasticSearch.assets/1696662226358.png)

> shard = hash(routing) % number_of_primary_shaards
>
> routing 是一个可变值，默认是文档的 _id ，也可以设置成一个自定义的值。
>
> 所有的文档 API（ get 、 index 、 delete 、 bulk 、 update 以及 mget ）都接受一个叫做 routing 的路由参数 ，通过这个参数我们可以自定义文档到分片的映射。一个自定义的路由参数可以用来确保所有相关的文档——例如所有属于同一个用户的文档——都被存储到同一个分片中。

### 分片控制

#### 写流程

![1696675354398](ElasticSearch.assets/1696675354398.png)

#### 读流程

![1696675457799](ElasticSearch.assets/1696675457799.png)

#### 更新流程

![1696675587576](ElasticSearch.assets/1696675587576.png)

#### mget操作

![1696675714938](ElasticSearch.assets/1696675714938.png)

#### bulk API操作

![1696675773197](ElasticSearch.assets/1696675773197.png)



### 分片原理

#### 倒排索引

> 正向索引
> 搜索时：		文件ID → 关键词![1696677338789](ElasticSearch.assets/1696677338789.png)
>
> 倒排索引
> 搜索时：		关键词 → 文件ID
> ![1696677367078](ElasticSearch.assets/1696677367078.png)

> 注：倒排索引中，==索引文本和查询字符串必须标准化为相同的格式！！！！！==

![1696679648054](ElasticSearch.assets/1696679648054.png)

#### 实时更新流程（微观）

![1696684629924](ElasticSearch.assets/1696684629924.png)

> 注：如果想优化索引速度而不是近实时搜索，
> 可以通过设置 refresh_interval ， 降低每个索引的刷新频率
> refresh_interval 可以在既存索引上进行动态更新。
>
> ```json
> {
> 	"settings": 
>     	{ "refresh_interval": "30s"}
> }
> ```
>
>
> 当你正在建立一个大的新索引时，可以先关闭自动刷新，待开始使用该索引时，再把它们调回来
>
> ```json
> # 关闭自动刷新
> PUT /{索引名}/_settings
> PUT /users/_settings
> { "refresh_interval": -1 }
> 
> # 每一秒刷新
> PUT /{索引名}/_settings
> PUT /users/_settings
> { "refresh_interval": "1s" }
> ```
>
> 



### 文档并发处理

> Ø  悲观并发控制
> 	这种方法被关系型数据库广泛使用，它假定有变更冲突可能发生，因此阻塞访问资源以防止冲突。 一个典型的例子是读取一行数据之前先将其锁住，确保只有放置锁的线程能够对这行数据进行修改。
>
> Ø  乐观并发控制
> 	Elasticsearch 中使用的这种方法假定冲突是不可能发生的，并且不会阻塞正在尝试的操作。 然而，如果源数据在读写当中被修改，更新将会失败。应用程序接下来将决定该如何解决冲突。 例如，可以重试更新、使用新的数据、或者将相关情况报告给用户。

#### 乐观并发控制

> ​	Elasticsearch 是分布式的。当文档创建、更新或删除时， 新版本的文档必须复制到集群中的其他节点。Elasticsearch
> 也是异步和并发的，这意味着这些复制请求被并行发送，并且到达目的地时也许顺序是乱的 。 Elasticsearch 需要一种方法确保文档的旧版本不会覆盖新的版本。即==使用版本号==

使用版本号进行修改

![1696690621331](ElasticSearch.assets/1696690621331.png)

现在使用：

![1696690812665](ElasticSearch.assets/1696690812665.png)

![1696691027730](ElasticSearch.assets/1696691027730.png)

#### 外部系统版本控制

> ​	一个常见的设置是使用其它数据库作为主要的数据存储，使用 Elasticsearch 做数据检索， 这意味着主数据库的所有更改发生时都需要被复制到 Elasticsearch ，如果多个进程负责这一数据同步，你可能遇到类似于之前描述的并发问题。
>
> ​	如果你的主数据库已经有了版本号— 或一个能作为版本号的字段值比如 timestamp —那么你就可以在 Elasticsearch 中通过增加 version_type=external 到查询字符串的方式重用这些相同的版本号， 版本号必须是大于零的整数， 且小于 9.2E+18 — 一个 Java 中 long类型的正值。
>
> ​	外部版本号的处理方式和我们之前讨论的内部版本号的处理方式有些不同，Elasticsearch 不是检查当前 _version 和请求中指定的版本号是否==相同==， 而是检查当前` _version `是否 ==小于== 指定的版本号。 如果请求成功，外部的版本号作为文档的新` _version`进行存储。

![1696691455404](ElasticSearch.assets/1696691455404.png)

```json
#POST	http://127.0.0.1:9200/shopping/_doc/1010?version=20&version_type=external
{
    "doc":{
        "title": "测试手机"
    }
}
```



## 文档分析

> `分析` 包含下面的过程：
>
> - 将一块文本分成适合于倒排索引的独立的 词条
> - 将这些词条统一化为标准格式以提高它们的“可搜索性”，或者 recall

> 分析器执行上面的工作。分析器实际上是将三个功能封装到了一个包里：
>
>  Ø  字符过滤器
> 		首先，字符串按顺序通过每个 字符过滤器 。他们的任务是在分词前整理字符串。一个字符过滤器可以用来去掉HTML，或者将 & 转化成 and。
>
> Ø  分词器
> 	其次，字符串被 分词器 分为单个的词条。一个简单的分词器遇到空格和标点的时候，可能会将文本拆分成词条。
>
> Ø  Token 过滤器
> 	最后，词条按顺序通过每个 token 过滤器 。这个过程可能会改变词条（例如，小写化 Quick ），删除词条（例如， 像 a， and， the 等无用词），或者增加词条（例如，像 jump和 leap 这种同义词）。

### 内置分析器

>  	Elasticsearch 还附带了可以直接使用的预包装的分析器。接下来我们会列出最重要的分析器。为了证明它们的差异，我们看看每个分析器会从下面的字符串得到哪些词条：
>
> `"Set the shape to semi-transparent by calling set_trans(5)"`
>
> Ø  标准分析器
> 	标准分析器是Elasticsearch 默认使用的分析器。它是分析各种语言文本最常用的选择。它根据 Unicode 联盟 定义的 单词边界 划分文本。删除绝大部分标点。最后，将词条小写。它会产生：
> 	`set, the, shape, to, semi, transparent, by, calling, set_trans, 5`
>
> Ø  简单分析器
> 	简单分析器在任何==不是字母==的地方分隔文本，将词条小写。它会产生：
> 	`set, the, shape, to, semi, transparent, by, calling, set, trans`
>
> Ø  空格分析器
> 	空格分析器在==空格==的地方划分文本。它会产生：
> 	`Set, the, shape, to, semi-transparent, by, calling, set_trans(5)`
>
> Ø  语言分析器
> 	特定语言分析器可用于 很多语言。它们可以考虑指定语言的特点。例如， 英语 分析器附带了一组英语无用词（常用单词，例如 and 或者 the ，它们对相关性没有多少影响），它们会被删除。 由于理解英语语法的规则，这个分词器可以提取英语单词的 词干 。
> 	英语 分词器会产生下面的词条：
> 	`set, shape, semi, transpar, call, set_tran, 5`
> 	注意看 transparent、 calling 和 set_trans 已经变为词根格式

###  分析器使用场景

> * 当查询`全文域`时，==会对查询字符串应用相同的分析器==，以产生正确的搜索词条列表。
> * 当查询`精确值`时，不会分析查询字符串，而是搜索你指定的精确值。

### 测试分析器

![1696686498094](ElasticSearch.assets/1696686498094.png)

```json
GET http://localhost:9200/_analyze
{
    "analyzer": "standard",		#分析器
    "text": "Text to analyze"		#文本域
}
```

结果

![1696686554156](ElasticSearch.assets/1696686554156.png)

```json
{
    "tokens": [
        {
            "token": "text",	#实际存储到索引中的词条
            "start_offset": 0,		#词条首字符在原始字符串中的位置
            "end_offset": 4,		#词条尾字符在原始字符串中的位置
            "type": "<ALPHANUM>",
            "position": 0		#指明词条在原始文本中出现的位置
        },
        {
            "token": "to",
            "start_offset": 5,
            "end_offset": 7,
            "type": "<ALPHANUM>",
            "position": 1
        },
        {
            "token": "analyze",
            "start_offset": 8,
            "end_offset": 15,
            "type": "<ALPHANUM>",
            "position": 2
        }
    ]
}
```

### 指定分析器

> ​	当Elasticsearch 在你的文档中检测到一个新的字符串域，它会==自动设置其为一个`全文 字符串 域`，使用 `标准 分析器`对它进行分析==。你不希望总是这样。可能你想使用一个不同的分析器，适用于你的数据使用的语言。有时候你想要一个字符串域就是一个字符串域—不使用分析，直接索引你传入的精确值，例如用户 ID 或者一个内部的状态域或标签。要做到这一点，我们必须手动指定这些域的映射。

### IK分词器

> 默认情况下
>
> ![1696687073617](ElasticSearch.assets/1696687073617.png)
>
> ES 的默认分词器无法识别中文中测试、单词这样的词汇，而是简单的将每个字拆完分为一个词。

> IK分词器插件
> [https://github.com/medcl/elasticsearch-analysis-ik/releases/tag/v7.8.0](https://github.com/medcl/elasticsearch-analysis-ik)
>
> 将解压后的后的文件夹放入 根目录下的 目录下，重启即可使用。  
>
> ![1696687963387](ElasticSearch.assets/1696687963387.png)

![1696687508274](ElasticSearch.assets/1696687508274.png)

```json
GET		http://localhost:9200/_analyze
{
    "text":"测试单词",
    "analyzer":"ik_max_word"	#ik_max_word：会将文本做最细粒度的拆分		ik_smart：会将文本做最粗粒度的拆分
}
```

结果

![1696687599000](ElasticSearch.assets/1696687599000.png)



> 如何将特有名词当作一个词呢？
>
> ![1696687809097](ElasticSearch.assets/1696687809097.png)
>
> 首先进入 ES 根目录中的
> plugins 文件夹下的 ik 文件夹，进入 config 目录，创建custom.dic文件，写入弗雷尔卓德。
>
> ![1696688300459](ElasticSearch.assets/1696688300459.png)
>
> ![1696688383445](ElasticSearch.assets/1696688383445.png)
>
> 同时打开IKAnalyzer.cfg.xml 文件，将新建的 custom.dic 配置其中，重启ES 服务器。
>
> ![1696688513212](ElasticSearch.assets/1696688513212.png)
>
> ![1696688544027](ElasticSearch.assets/1696688544027.png)
>
> 此时重启es再查，就会将弗雷尔卓德变成一个词了。
>
> ![1696688697353](ElasticSearch.assets/1696688697353.png)

### 自定义分析器

> 一个 分析器 就是在一个包里面组合了三种函数的一个包装器， 三种函数按照顺序被执行:
>
> Ø  字符过滤器
> 	字符过滤器 用来 整理 一个尚未被分词的字符串。例如，如果我们的文本是 HTML 格式的，它会包含像 <p> 或者 <div> 这样的 HTML 标签，这些标签是我们不想索引的。我们可以使用 html 清除 字符过滤器 来移除掉所有的 HTML 标签，并且像把 &Aacute; 转换为相对应的Unicode 字符 Á 这样，转换 HTML 实体。一个分析器可能有 0 个或者多个字符过滤器。
>
> Ø  分词器
> 	一个分析器 必须 有一个唯一的分词器。 分词器把字符串分解成单个词条或者词汇单元。 标准 分析器里使用的 标准 分词器 把一个字符串根据单词边界分解成单个词条，并且移除掉大部分的标点符号，然而还有其他不同行为的分词器存在。
> 	例如， 关键词 分词器 完整地输出 接收到的同样的字符串，并不做任何分词。 空格 分词器 只根据空格分割文本 。 正则 分词器 根据匹配正则表达式来分割文本 。
>
> Ø  词单元过滤器
> 	经过分词，作为结果的 词单元流 会按照指定的顺序通过指定的词单元过滤器 。
> 	词单元过滤器可以修改、添加或者移除词单元。我们已经提到过 lowercase 和 stop 词过滤器 ，但是在 Elasticsearch 里面还有很多可供选择的词单元过滤器。词干过滤器 把单词 遏制 为 词干。 ascii_folding 过滤器移除变音符，把一个像 "très" 这样的词转换为 "tres" 。
>

![1696689504670](ElasticSearch.assets/1696689504670.png)

```
PUT  http://localhost:9200/my_index
```

```json
{
    "settings": {
        "analysis": {
            "char_filter": {
                "&_to_and": {
                    "type": "mapping",
                    "mappings": [
                        "&=> and "
                    ]
                }
            },
            "filter": {
                "my_stopwords": {
                    "type": "stop",
                    "stopwords": [
                        "the",
                        "a"
                    ]
                }
            },
            "analyzer": {
                "my_analyzer": {
                    "type": "custom",
                    "char_filter": [
                        "html_strip",
                        "&_to_and"
                    ],
                    "tokenizer": "standard",
                    "filter": [
                        "lowercase",
                        "my_stopwords"
                    ]
                }
            }
        }
    }
}
```

成功后再查

![1696689666729](ElasticSearch.assets/1696689666729.png)

```json
# GET http://127.0.0.1:9200/my_index/_analyze
{
    "text": "The quick & brown fox",
    "analyzer": "my_analyzer"
}
```

结果

```json
{
    "tokens": [
        {
            "token": "quick",
            "start_offset": 4,
            "end_offset": 9,
            "type": "<ALPHANUM>",
            "position": 1
        },
        {
            "token": "and",
            "start_offset": 10,
            "end_offset": 11,
            "type": "<ALPHANUM>",
            "position": 2
        },
        {
            "token": "brown",
            "start_offset": 12,
            "end_offset": 17,
            "type": "<ALPHANUM>",
            "position": 3
        },
        {
            "token": "fox",
            "start_offset": 18,
            "end_offset": 21,
            "type": "<ALPHANUM>",
            "position": 4
        }
    ]
}
```





## 基本操作

### http操作

#### 索引操作

##### 创建索引（PUT）

###### 普通创建

* 操作

  ![1694079752538](ElasticSearch.assets/1694079752538.png)

  ```
  http://127.0.0.1:9200/{索引名}
  http://127.0.0.1:9200/shopping
  ```

* 结果

  注：创建索引库的分片数默认 1 片，在 7.0.0 之前的 Elasticsearch 版本中，默认 5 片

  ```json
  {
      "acknowledged": true,	#【响应结果】
      "shards_acknowledged": true,	#【分片结果】
      "index": "shopping"	#【索引名称】
  }
  ```

* 细节

  如果重复添加索引，会返回错误信息

  ![1694080095403](ElasticSearch.assets/1694080095403.png)



###### 带设置选项创建索引

![1696655522586](ElasticSearch.assets/1696655522586.png)

```json
{
    "settings": {
        "number_of_shards": 3,	#分片数
        "number_of_replicas": 1	#副本数，不包含原分片
    }
}
```

结果：

![1696655554255](ElasticSearch.assets/1696655554255.png)



##### 查看索引（GET）

* 操作

  ![1694080372382](ElasticSearch.assets/1694080372382.png)

  ```
  http://127.0.0.1:9200/_cat/indices?v
  ```

* 结果

  ![1694080435052](ElasticSearch.assets/1694080435052.png)

* 表头含义

  | 表头           | 含义                                                         |
  | -------------- | ------------------------------------------------------------ |
  | health         | 当前服务器健康状态：   **green**(集群完整) **yellow**(单点正常、集群不完整) red(单点不正常) |
  | status         | 索引打开、关闭状态                                           |
  | index          | 索引名                                                       |
  | uuid           | 索引统一编号                                                 |
  | pri            | 主分片数量                                                   |
  | rep            | 副本数量                                                     |
  | docs.count     | 可用文档数量                                                 |
  | docs.deleted   | 文档删除状态（逻辑删除）                                     |
  | store.size     | 主分片和副分片整体占空间大小                                 |
  | pri.store.size | 主分片占空间大小                                             |

##### 查看单个索引（GET）

* 操作

  ![1694080718086](ElasticSearch.assets/1694080718086.png)

  ```
  http://127.0.0.1:9200/{索引名}
  
  http://127.0.0.1:9200/shopping
  ```

* 结果

  ![1694086902044](ElasticSearch.assets/1694086902044.png)

  ```json
  {
      "shopping": {	#【索引名】
          "aliases": {},		#【别名】	
          "mappings": {},		#【映射】
          "settings": {		#【设置】
              "index": {		#【设置 - 索引】
                  "creation_date": "1694079688767",	#【设置 - 索引 - 创建时间】
                  "number_of_shards": "1",		#【设置 - 索引 - 主分片数量】
                  "number_of_replicas": "1",		#【设置 - 索引 - 副分片数量】
                  "uuid": "s2lry8LLRLGX10GYCsH22g",	#【设置 - 索引 - 唯一标识】
                  "version": {	#【设置 - 索引 - 版本】
                      "created": "7080099"
                  },
                  "provided_name": "shopping"	#【设置 - 索引 - 名称】
              }
          }
      }
  }
  ```

##### 删除索引（DELETE）

* 操作

  ```
  http://127.0.0.1:9200/{索引名}
  
  http://127.0.0.1:9200/shopping
  ```

  ![1694087047620](ElasticSearch.assets/1694087047620.png)

* 结果

  ![1694087075207](ElasticSearch.assets/1694087075207.png)

* 细节

  删除不存在的索引时

  ![1694087234906](ElasticSearch.assets/1694087234906.png)

  ![1694087272850](ElasticSearch.assets/1694087272850.png)

  ```json
  {
      "error": {
          "root_cause": [
              {
                  "type": "index_not_found_exception",
                  "reason": "no such index [shopping]",
                  "resource.type": "index_or_alias",
                  "resource.id": "shopping",
                  "index_uuid": "_na_",
                  "index": "shopping"
              }
          ],
          "type": "index_not_found_exception",
          "reason": "no such index [shopping]",
          "resource.type": "index_or_alias",
          "resource.id": "shopping",
          "index_uuid": "_na_",
          "index": "shopping"
      },
      "status": 404
  }
  ```



##### 设置副本数

```
PUT  http://127.0.0.1:1001/{索引名}/_settings
PUT  http://127.0.0.1:1001/users/_settings
```

```json
{
    "number_of_replicas": 2
}
```

![1696661280710](ElasticSearch.assets/1696661280710.png)



#### 文档操作

##### 插入文档（POST）

1. 操作

   body请求体

   ```
   {
       "title":"小米手机",
       "category":"小米",
       "images":"http://www.gulixueyuan.com/xm.jpg",
       "price":3999.00
   }
   ```

   ```
   #默认情况下，ES 服务器会随机生成一个ID
   http://127.0.0.1:9200/{索引名}/_doc
   
   http://127.0.0.1:9200/shopping/_doc
   ```

   ![1694088310786](ElasticSearch.assets/1694088310786.png)

   ```
   HOST操作
   http://127.0.0.1:9200/shopping/_doc/{自定义id}
   http://127.0.0.1:9200/shopping/_doc/1001
   
   或PUT操作
   http://127.0.0.1:9200/shopping/_create/1003
   ```

   ![1694089326584](ElasticSearch.assets/1694089326584.png)

   ![1694100264460](ElasticSearch.assets/1694100264460.png)

2. 结果

   ![1694088526129](ElasticSearch.assets/1694088526129.png)

   ```json
   {
       "_index": "shopping",	#【索引】
       "_type": "_doc",	【类型-文档】
       "_id": "okyHb4oBrupms3IWluIi",	【唯一标识】 #可以类比为 MySQL 中的主键，随机生成
       "_version": 1,		【版本】
       "result": "created",	【结果】#这里的 create 表示创建成功
       "_shards": {	【分片】
           "total": 2,		【分片 - 总数】
           "successful": 1,	【分片 - 成功】
           "failed": 0		【分片 - 失败】
       },
       "_seq_no": 0,
       "_primary_term": 1
   }
   ```

   ![1694089504962](ElasticSearch.assets/1694089504962.png)

##### 查看文档（GET）

1. 操作

   ```
   http://127.0.0.1:9200/{索引}/_doc/{id值}
   
   http://127.0.0.1:9200/shopping/_doc/1001
   ```

   ![1694103904890](ElasticSearch.assets/1694103904890.png)

2. 结果

   ![1694104094846](ElasticSearch.assets/1694104094846.png)

   ```json
   {
       "_index": "shopping",	#【索引】
       "_type": "_doc",	【文档类型】
       "_id": "1001",
       "_version": 1,
       "_seq_no": 1,
       "_primary_term": 1,
       "found": true,	【是否找到】
       "_source": {	【文档源信息】
           "title": "小米手机",
           "category": "小米",
           "images": "http://www.gulixueyuan.com/xm.jpg",
           "price": 3999.00
       }
   }
   ```

##### 查看某个索引所有文档（GET）

1. 操作

   ```
   http://127.0.0.1:9200/shopping/_search
   ```

   ![1694104499447](ElasticSearch.assets/1694104499447.png)

2. 结果

   ```json
   {
       "took": 151,
       "timed_out": false,
       "_shards": {
           "total": 1,
           "successful": 1,
           "skipped": 0,
           "failed": 0
       },
       "hits": {
           "total": {
               "value": 4,
               "relation": "eq"
           },
           "max_score": 1.0,
           "hits": [
               {
                   "_index": "shopping",
                   "_type": "_doc",
                   "_id": "okyHb4oBrupms3IWluIi",
                   "_score": 1.0,
                   "_source": {
                       "title": "小米手机",
                       "category": "小米",
                       "images": "http://www.gulixueyuan.com/xm.jpg",
                       "price": 3999.00
                   }
               },
               {
                   "_index": "shopping",
                   "_type": "_doc",
                   "_id": "1001",
                   "_score": 1.0,
                   "_source": {
                       "title": "小米手机",
                       "category": "小米",
                       "images": "http://www.gulixueyuan.com/xm.jpg",
                       "price": 3999.00
                   }
               },
               {
                   "_index": "shopping",
                   "_type": "_doc",
                   "_id": "1002",
                   "_score": 1.0,
                   "_source": {
                       "title": "小米手机",
                       "category": "小米",
                       "images": "http://www.gulixueyuan.com/xm.jpg",
                       "price": 3999.00
                   }
               },
               {
                   "_index": "shopping",
                   "_type": "_doc",
                   "_id": "1003",
                   "_score": 1.0,
                   "_source": {
                       "title": "小米手机",
                       "category": "小米",
                       "images": "http://www.gulixueyuan.com/xm.jpg",
                       "price": 3999.00
                   }
               }
           ]
       }
   }
   ```

##### 修改文档（PUT）

> 全量修改

1. 操作

   ```
   http://127.0.0.1:9200/{索引}/_doc/{ID}
   http://127.0.0.1:9200/shopping/_doc/1001
   ```

   body

   ![1694105541382](ElasticSearch.assets/1694105541382.png)

   ```json
   {
       "title": "华为手机",
       "category": "华为",
       "images": "http://www.gulixueyuan.com/hw.jpg",
       "price": 4999.00
   }
   ```

2. 结果

   ![1694104851164](ElasticSearch.assets/1694104851164.png)

   ```json
   {
       "_index": "shopping",
       "_type": "_doc",
       "_id": "1001",
       "_version": 2,	#【版本】
       "result": "updated",	【结果】# updated 表示数据被更新
       "_shards": {
           "total": 2,
           "successful": 1,
           "failed": 0
       },
       "_seq_no": 4,
       "_primary_term": 1
   }
   ```

##### 修改字段

1. 操作

   ```
   http://127.0.0.1:9200/{索引}/_update/{id}
   
   http://127.0.0.1:9200/shopping/_update/1002
   ```

   ![1694105783318](ElasticSearch.assets/1694105783318.png)

   body

   ```json
   {
       "doc": {
           "price": 3000.00
       }
   }
   ```

2. 结果

   ![1694105895458](ElasticSearch.assets/1694105895458.png)

   ```json
   {
       "_index": "shopping",
       "_type": "_doc",
       "_id": "1002",
       "_version": 2,
       "result": "updated",
       "_shards": {
           "total": 2,
           "successful": 1,
           "failed": 0
       },
       "_seq_no": 6,
       "_primary_term": 1
   }
   ```

##### 删除文档

1. 操作

   ```
   http://127.0.0.1:9200/{索引}/_doc/{id}
   
   http://127.0.0.1:9200/shopping/_doc/1003
   ```

   ![1694106105609](ElasticSearch.assets/1694106105609.png)

2. 结果

   ![1694106145421](ElasticSearch.assets/1694106145421.png)

   ```json
   {
       "_index": "shopping",
       "_type": "_doc",
       "_id": "1003",
       "_version": 3,	#【版本】	#对数据的操作，都会更新版本
       "result": "deleted",	【结果】	 # deleted 表示数据被标记为删除
       "_shards": {
           "total": 2,
           "successful": 1,
           "failed": 0
       },
       "_seq_no": 7,
       "_primary_term": 1
   }
   ```

3. 其他

   如果删除一个并不存在的文档

   ![1694106293722](ElasticSearch.assets/1694106293722.png)

   ```json
   {
       "_index": "shopping",
       "_type": "_doc",
       "_id": "1003",
       "_version": 1,
       "result": "not_found",	# not_found 表示未查找到
       "_shards": {
           "total": 2,
           "successful": 1,
           "failed": 0
       },
       "_seq_no": 8,
       "_primary_term": 1
   }
   ```

##### 条件删除文档

1. 操作

   ```
   http://127.0.0.1:9200/{索引}/_delete_by_query
   
   http://127.0.0.1:9200/shopping/_delete_by_query
   ```

   ![1694106639482](ElasticSearch.assets/1694106639482.png)

   body

   ```json
   {
       "query": {
           "match": {
               "price": 4000.00
           }
       }
   }
   ```

2. 结果

   ```json
   {
       "took": 359,	#【耗时】
       "timed_out": false,	【是否超时】
       "total": 2,	【总数】
       "deleted": 2,	【删除数量】
       "batches": 1,
       "version_conflicts": 0,
       "noops": 0,
       "retries": {
           "bulk": 0,
           "search": 0
       },
       "throttled_millis": 0,
       "requests_per_second": -1.0,
       "throttled_until_millis": 0,
       "failures": []
   }
   ```



#### 映射操作

##### 创建映射

> 映射操作类似于数据库(database)中的表结构(table)
>
> 创建数据库表需要设置字段名称，类型，长度，约束等；索引库也一样，需要知道这个类型下有哪些字段，每个字段有哪些约束信息，这就叫做映射(mapping)。

**操作**

![1694537237824](ElasticSearch.assets/1694537237824.png)

```json
#PUT	http://127.0.0.1:9200/student/_mapping
{
    "properties": {
        "name": {
            "type": "text",
            "index": true
        },
        "sex": {
            "type": "text",
            "index": true
        },
        "age": {
            "type": "long",
            "index": true
        }
    }
}
```

**结果**

![1694537253313](ElasticSearch.assets/1694537253313.png)

> * 字段名：任意填写，下面指定许多属性，例如：title、subtitle、images、price
>
> * type：类型，Elasticsearch 中支持的数据类型非常丰富
>
>   * String 类型，又分两种：
>     * text：可分词
>     * keyword：不可分词，数据会作为完整字段进行匹配
>   * Numerical：数值类型，分两类
>     * 基本数据类型：long、integer、short、byte、double、float、half_float
>     * 浮点数的高精度类型：scaled_float
>   * Date：日期类型
>     * Array：数组类型
>     * Object：对象
>
>   
>
> * index：是否索引，默认为true，也就是说你不进行任何配置，所有字段都会被索引。 
>
>   * true：字段会被索引，则可以用来进行搜索
>   * false：字段不会被索引，不能用来搜索
>
> * store：是否将数据进行独立存储，默认为 false
>   原始的文本会存储在_source 里面，默认情况下其他提取出来的字段都不是独立存储的，是从_source 里面提取出来的。当然你也可以独立的存储某个字段，只要设置 "store": true 即可，获取独立存储的字段要比从_source 中解析快得多，但是也会占用更多的空间，所以要根据实际业务需求来设置。
>
>   
>
> * analyzer：分词器，这里的ik_max_word 即使用 ik 分词器



##### 查看映射

* 操作

  ![1694537875887](ElasticSearch.assets/1694537875887.png)

  ```json
  #GET	http://127.0.0.1:9200/student/_mapping
  ```

* 结果

  ```json
  {
      "student": {
          "mappings": {
              "properties": {
                  "age": {
                      "type": "long"
                  },
                  "name": {
                      "type": "text",
                      "fields": {
                          "keyword": {
                              "type": "keyword",
                              "ignore_above": 256
                          }
                      }
                  },
                  "nickname": {
                      "type": "text",
                      "fields": {
                          "keyword": {
                              "type": "keyword",
                              "ignore_above": 256
                          }
                      }
                  },
                  "sex": {
                      "type": "text",
                      "fields": {
                          "keyword": {
                              "type": "keyword",
                              "ignore_above": 256
                          }
                      }
                  }
              }
          }
      }
  }
  ```



##### 索引映射关联

> 创建索引的同时，创建映射

* 操作

  ![1694538460215](ElasticSearch.assets/1694538460215.png)

  ```json
  #PUT	http://127.0.0.1:9200/zfptest
  {
      "settings": {},
      "mappings": {
          "properties": {
              "name": {
                  "type": "text",
                  "index": true
              },
              "sex": {
                  "type": "text",
                  "index": false
              },
              "age": {
                  "type": "long",
                  "index": false
              }
          }
      }
  }
  ```

* 结果

  ![1694538509004](ElasticSearch.assets/1694538509004.png)



#### 高级查询

练习所用的文档

```json
#post	http://127.0.0.1:9200/student/_doc/1001
{
    "name": "zhangsan",
    "nickname": "zhangsan",
    "sex": "男",
    "age": 30
}

#post	http://127.0.0.1:9200/student/_doc/1002
{
    "name": "lisi",
    "nickname": "lisi",
    "sex": "男",
    "age": 20
}

#post	http://127.0.0.1:9200/student/_doc/1003
{
    "name": "wangwu",
    "nickname": "wangwu",
    "sex": "女",
    "age": 40
}

#post	http://127.0.0.1:9200/student/_doc/1004
{
    "name": "zhangsan1",
    "nickname": "zhangsan1",
    "sex": "女",
    "age": 50
}

#post	http://127.0.0.1:9200/student/_doc/1005
{
    "name": "zhangsan2",
    "nickname": "zhangsan2",
    "sex": "女",
    "age": 30
}
```

##### 全量查询

###### body查询

**查询**

![1694447359760](ElasticSearch.assets/1694447359760.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "match_all": {}
    }
}
# "query"：这里的 query 代表一个查询对象，里面可以有不同的查询属性
# "match_all"：查询类型，例如：match_all(代表查询所有)， match，term ， range 等等
# {查询条件}：查询条件会根据类型的不同，写法也有差异
```

**结果**

```json
{
    "took": 3,		【查询花费时间，单位毫秒】
    "timed_out": false,		【是否超时】
    "_shards": {		【分片信息】
        "total": 1,		【总数】
        "successful": 1,	【成功】
        "skipped": 0,	【忽略】
        "failed": 0		【失败】
    },
    "hits": {	【搜索命中结果】
        "total": {	【搜索条件匹配的文档总数】
            "value": 5,		【总命中计数的值】
            "relation": "eq"	【计数规则】# eq 表示计数准确， gte 表示计数不准确
        },
        "max_score": 1.0,	【匹配度分值】
        "hits": [	【命中结果集合】
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1002",
                "_score": 1.0,
                "_source": {
                    "name": "lisi",
                    "nickname": "lisi",
                    "sex": "男",
                    "age": 20
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1003",
                "_score": 1.0,
                "_source": {
                    "name": "wangwu",
                    "nickname": "wangwu",
                    "sex": "女",
                    "age": 40
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1004",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan1",
                    "nickname": "zhangsan1",
                    "sex": "女",
                    "age": 50
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1005",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan2",
                    "nickname": "zhangsan2",
                    "sex": "女",
                    "age": 30
                }
            }
        ]
    }
}
```

###### 路径传递

![1694447820448](ElasticSearch.assets/1694447820448.png)

```
GET		http://127.0.0.1:9200/student/_search
```

结果与body查询相同



##### 匹配查询

###### body传递

**查询**

![1694445003916](ElasticSearch.assets/1694445003916.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "match": {		#此处换成match_phrase就是完全匹配，不分词
            "name": "zhangsan"		#会进行分词，即使不存在也可能查到
        }
    }
}
```

**结果**

![1694445135325](ElasticSearch.assets/1694445135325.png)

###### 路径传递

**查询**

![1694446961877](ElasticSearch.assets/1694446961877.png)

```
GET		http://127.0.0.1:9200/student/_search?q=name:zhangsan
```

**结果**

![1694447010934](ElasticSearch.assets/1694447010934.png)



##### 多字段匹配

> multi_match 与 match 类似，不同的是它可以在多个字段中查询。

**查询**

![1694449859074](ElasticSearch.assets/1694449883451.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "multi_match": {
            "query": "zhangsan",
            "fields": [
                "name",
                "nickname"
            ]
        }
    }
}
```

**结果**

![1694449962639](ElasticSearch.assets/1694449962639.png)



##### 关键字精确查询

###### 单关键字

**查询**

![1694450236145](ElasticSearch.assets/1694450236145.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "term": {		#term 查询，精确的关键词匹配查询，不对查询条件进行分词。
            "name": {
                "value": "zhangsan"
            }
        }
    }
}
```

**结果**

![1694450261987](ElasticSearch.assets/1694450261987.png)

###### 多关键字

**查询**

![1694450776852](ElasticSearch.assets/1694450776852.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "terms": {		#如果这个字段包含了指定值中的任何一个值，那么这个文档满足条件
            "name": [
                "zhangsan",
                "lisi"
            ]
        }
    }
}
```

**结果**

```json
{
    "took": 16,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 2,
            "relation": "eq"
        },
        "max_score": 1.0,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1002",
                "_score": 1.0,
                "_source": {
                    "name": "lisi",
                    "nickname": "lisi",
                    "sex": "男",
                    "age": 20
                }
            }
        ]
    }
}
```



##### 仅查指定字段

**查询**

![1694449110830](ElasticSearch.assets/1694449110830.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "_source": [	#指定要返回的字段
        "name",
        "nickname"
    ],
    "query": {
        "terms": {
            "nickname": [
                "zhangsan"
            ]
        }
    }
}
```

**结果**

![1694449148108](ElasticSearch.assets/1694449148108.png)



##### 过滤字段

**查询**

![1694451192513](ElasticSearch.assets/1694451192513.png)

Ø  includes：指定想要显示的字段

Ø  excludes：指定不想要显示的字段

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "_source": {
        "includes": [	#指定想要显示的字段
            "name",
            "nickname"
        ]	//也可使用filter
    },
    "query": {
        "terms": {
            "nickname": [
                "zhangsan"
            ]
        }
    }
}
```

**结果**

![1694451231475](ElasticSearch.assets/1694451231475.png)



##### 组合查询

**查询**

![1694451660123](ElasticSearch.assets/1694451660123.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "bool": {
            "must": [
                {
                    "match": {	#必须		出现多个must时，必须【同时成立】
                        "name": "zhangsan"
                    }
                }
            ],
            "must_not": [	#必须不
                {
                    "match": {
                        "age": "40"
                    }
                }
            ],
            "should": [		#应该		出现多个should时，【或条件】
                {
                    "match": {
                        "sex": "男"
                    }
                }
            ]
        }
    }
}
```

**结果**

![1694451799559](ElasticSearch.assets/1694451799559.png)



##### 范围查询

**查询**

![1694452089433](ElasticSearch.assets/1694452089433.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "range": {
            "age": {
                "gte": 30,
                "lte": 35
            }
        }
    }
}
```

**结果**

```json
{
    "took": 9,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 2,
            "relation": "eq"
        },
        "max_score": 1.0,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1005",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan2",
                    "nickname": "zhangsan2",
                    "sex": "女",
                    "age": 30
                }
            }
        ]
    }
}
```



##### 模糊查询

> 返回包含与搜索字词相似的字词的文档。
> 编辑距离是将一个术语转换为另一个术语所需的一个字符更改的次数。这些更改可以包括：
> 	更改字符（box → fox）
> 	删除字符（black → lack）
> 	插入字符（sic → sick）
> 	转置两个相邻字符（act → cat）
>
> 为了找到相似的术语，fuzzy 查询会在指定的编辑距离内创建一组搜索词的所有可能的变体或扩展。然后查询返回每个扩展的完全匹配。
>
> 通过 fuzziness 修改编辑距离。一般使用默认值AUTO，根据术语的长度生成编辑距离。
> 若为1可以相差一个字符，若为2，可以相差两个字符。依此类推。

###### fuzzy

**查询**

![1694453485307](ElasticSearch.assets/1694453485307.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "fuzzy": {
            "name": {
                "value": "zhangsan"
            }
        }
    }
}
```

**结果**

```json
{
    "took": 8,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 3,
            "relation": "eq"
        },
        "max_score": 1.3862942,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": 1.3862942,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1004",
                "_score": 1.2130076,
                "_source": {
                    "name": "zhangsan1",
                    "nickname": "zhangsan1",
                    "sex": "女",
                    "age": 50
                }
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1005",
                "_score": 1.2130076,
                "_source": {
                    "name": "zhangsan2",
                    "nickname": "zhangsan2",
                    "sex": "女",
                    "age": 30
                }
            }
        ]
    }
}
```



###### fuzziness 

**查询**

![1694453736101](ElasticSearch.assets/1694453736101.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "fuzzy": {
            "name": {
                "value": "zhangsan",
                "fuzziness": 2
            }
        }
    }
}
```

结果与fuzzy一样



##### 排序

###### 单字段排序

**查询**

![1694454093030](ElasticSearch.assets/1694454093030.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "fuzzy": {
            "name": {
                "value": "zhangsan"
            }
        }
    },
    "sort": [
        {
            "age": {
                "order": "desc"
            }
        }
    ]
}
```

**结果**

```json
{
    "took": 11,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 3,
            "relation": "eq"
        },
        "max_score": null,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1004",
                "_score": null,
                "_source": {
                    "name": "zhangsan1",
                    "nickname": "zhangsan1",
                    "sex": "女",
                    "age": 50
                },
                "sort": [
                    50
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": null,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                },
                "sort": [
                    30
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1005",
                "_score": null,
                "_source": {
                    "name": "zhangsan2",
                    "nickname": "zhangsan2",
                    "sex": "女",
                    "age": 30
                },
                "sort": [
                    30
                ]
            }
        ]
    }
}
```

###### 多字段排序

> 假定我们想要结合使用 age 和 _score 进行查询，并且匹配的结果首先按照年龄排序，然后按照相关性得分排序

**查询**

![1694454601122](ElasticSearch.assets/1694454601122.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "match_all": {}
    },
    "sort": [
        {
            "age": {
                "order": "desc"
            }
        },
        {
            "_score": {
                "order": "desc"
            }
        }
    ]
}
```

**结果**

```json
{
    "took": 7,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1004",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan1",
                    "nickname": "zhangsan1",
                    "sex": "女",
                    "age": 50
                },
                "sort": [
                    50,
                    1.0
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1003",
                "_score": 1.0,
                "_source": {
                    "name": "wangwu",
                    "nickname": "wangwu",
                    "sex": "女",
                    "age": 40
                },
                "sort": [
                    40,
                    1.0
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                },
                "sort": [
                    30,
                    1.0
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1005",
                "_score": 1.0,
                "_source": {
                    "name": "zhangsan2",
                    "nickname": "zhangsan2",
                    "sex": "女",
                    "age": 30
                },
                "sort": [
                    30,
                    1.0
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1002",
                "_score": 1.0,
                "_source": {
                    "name": "lisi",
                    "nickname": "lisi",
                    "sex": "男",
                    "age": 20
                },
                "sort": [
                    20,
                    1.0
                ]
            }
        ]
    }
}
```



##### 高亮查询

> Elasticsearch 可以对查询内容中的关键字部分，进行标签和样式(高亮)的设置。在使用 match 查询的同时，加上一个 highlight 属性：
> 	pre_tags：前置标签
> 	post_tags：后置标签
> 	fields：需要高亮的字段
> 	title：这里声明 title 字段需要高亮，后面可以为这个字段设置特有配置，也可以空

**查询**

![1694454916715](ElasticSearch.assets/1694454916715.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "match": {
            "name": "zhangsan"
        }
    },
    "highlight": {
        "pre_tags": "<font color='red'>",
        "post_tags": "</font>",
        "fields": {
            "name": {}
        }
    }
}
```

**结果**

```json
{
    "took": 48,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 1,
            "relation": "eq"
        },
        "max_score": 1.3862942,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1001",
                "_score": 1.3862942,
                "_source": {
                    "name": "zhangsan",
                    "nickname": "zhangsan",
                    "sex": "男",
                    "age": 30
                },
                "highlight": {
                    "name": [
                        "<font color='red'>zhangsan</font>"
                    ]
                }
            }
        ]
    }
}
```



##### 分页查询

**查询**

![1694448631187](ElasticSearch.assets/1694448631187.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "query": {
        "match_all": {}
    },
    "sort": [
        {
            "age": {
                "order": "desc"
            }
        }
    ],
    "from": 0,	#当前页的起始索引，默认从 0 开始。from = (pageNum - 1) * size
    "size": 2	#size：每页显示多少条
}
```

**结果**

```json
{
    "took": 18,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": [
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1004",
                "_score": null,
                "_source": {
                    "name": "zhangsan1",
                    "nickname": "zhangsan1",
                    "sex": "女",
                    "age": 50
                },
                "sort": [
                    50
                ]
            },
            {
                "_index": "student",
                "_type": "_doc",
                "_id": "1003",
                "_score": null,
                "_source": {
                    "name": "wangwu",
                    "nickname": "wangwu",
                    "sex": "女",
                    "age": 40
                },
                "sort": [
                    40
                ]
            }
        ]
    }
}
```



##### 聚合查询

> 聚合允许使用者对 es 文档进行统计分析，类似与关系型数据库中的 group by，当然还有很多其他的聚合，例如取最大值、平均值等等。

###### max

**查询**

![1694455251009](ElasticSearch.assets/1694455251009.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {	//聚合操作
        "max_age": {	//名称随便起
            "max": {	
                "field": "age"
            }
        }
    },
    "size": 0
}
```

**结果**

![1694455292747](ElasticSearch.assets/1694455292747.png)

```json
{
    "took": 25,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "max_age": {
            "value": 50.0
        }
    }
}
```

###### min

**查询**

![1694455639987](ElasticSearch.assets/1694455639987.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "min_age": {
            "min": {
                "field": "age"
            }
        }
    },
    "size": 0
}
```

**结果**

![1694455511975](ElasticSearch.assets/1694455511975.png)

```json
{
    "took": 1,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "min_age": {
            "value": 20.0
        }
    }
}
```

###### sum

**查询**

![1694455802792](ElasticSearch.assets/1694455802792.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "sum_age": {
            "sum": {
                "field": "age"
            }
        }
    },
    "size": 0
}
```

**结果**

![1694455887777](ElasticSearch.assets/1694455887777.png)

```json
{
    "took": 5,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "sum_age": {
            "value": 170.0
        }
    }
}
```

###### avg

**查询**

![1694455973674](ElasticSearch.assets/1694455973674.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "avg_age": {
            "avg": {
                "field": "age"
            }
        }
    },
    "size": 0
}
```

**结果**

![1694456026145](ElasticSearch.assets/1694456026145.png)

```json
{
    "took": 2,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "avg_age": {
            "value": 34.0
        }
    }
}
```

###### distinct+sum

> Ø  对某个字段的值进行去重之后再取总数

**查询**

![1694456141407](ElasticSearch.assets/1694456141407.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "distinct_age": {
            "cardinality": {
                "field": "age"
            }
        }
    },
    "size": 0
}
```

**结果**

![1694456203826](ElasticSearch.assets/1694456203826.png)

```json
{
    "took": 13,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "distinct_age": {
            "value": 4
        }
    }
}
```

###### State聚合

> stats 聚合，对某个字段一次性返回 count，max，min，avg 和 sum 五个指标

**查询**

![1694456369766](ElasticSearch.assets/1694456369766.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "stats_age": {
            "stats": {
                "field": "age"
            }
        }
    },
    "size": 0
}
```

**结果**

![1694456406706](ElasticSearch.assets/1694456406706.png)

```json
{
    "took": 2,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "stats_age": {
            "count": 5,
            "min": 20.0,
            "max": 50.0,
            "avg": 34.0,
            "sum": 170.0
        }
    }
}
```



##### 桶聚合查询terms

> 桶聚和相当于sql 中的 group by 语句

###### 分组统计

> Ø  terms 聚合，分组统计

**查询**

![1694456604246](ElasticSearch.assets/1694456604246.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "age_groupby": {
            "terms": {	//分组
                "field": "age"	//分组字段
            }
        }
    },
    "size": 0	//不要原始数据
}
```

**结果**

```json
{
    "took": 13,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []	//此时没有返回原始数据
    },
    "aggregations": {
        "age_groupby": {
            "doc_count_error_upper_bound": 0,
            "sum_other_doc_count": 0,
            "buckets": [
                {
                    "key": 30,
                    "doc_count": 2
                },
                {
                    "key": 20,
                    "doc_count": 1
                },
                {
                    "key": 40,
                    "doc_count": 1
                },
                {
                    "key": 50,
                    "doc_count": 1
                }
            ]
        }
    }
}
```

###### 分组再聚合

> Ø  在 terms 分组下再进行聚合

**查询**

![1694457018486](ElasticSearch.assets/1694457018486.png)

```json
#GET	http://127.0.0.1:9200/student/_search
{
    "aggs": {
        "age_groupby": {
            "terms": {
                "field": "age"
            },
            "aggs":{
                "sum_age":{
                    "sum": {
                        "field":"age"
                    }
                }
            }
        }
    },
    "size": 0
}
```

**结果**

```json
{
    "took": 5,
    "timed_out": false,
    "_shards": {
        "total": 1,
        "successful": 1,
        "skipped": 0,
        "failed": 0
    },
    "hits": {
        "total": {
            "value": 5,
            "relation": "eq"
        },
        "max_score": null,
        "hits": []
    },
    "aggregations": {
        "age_groupby": {
            "doc_count_error_upper_bound": 0,
            "sum_other_doc_count": 0,
            "buckets": [
                {
                    "key": 30,
                    "doc_count": 2,
                    "sum_age": {
                        "value": 60.0
                    }
                },
                {
                    "key": 20,
                    "doc_count": 1,
                    "sum_age": {
                        "value": 20.0
                    }
                },
                {
                    "key": 40,
                    "doc_count": 1,
                    "sum_age": {
                        "value": 40.0
                    }
                },
                {
                    "key": 50,
                    "doc_count": 1,
                    "sum_age": {
                        "value": 50.0
                    }
                }
            ]
        }
    }
}
```



#### 集群状态

启动后的检测方法

![1695536378402](ElasticSearch.assets/1695536378402.png)

![1695536397090](ElasticSearch.assets/1695536397090.png)

> status字段表示当前集群在总体上是否工作正常，有三种颜色
>
> - green：所有的主分片和副分片都正常运行。
> - yellow：所有主分片都正常运行，但不是所有副分片都正常运行。
> - red：有主分片没有正常运行



### Java API

* 依赖

  ```xml
          <dependency>
              <groupId>org.elasticsearch</groupId>
              <artifactId>elasticsearch</artifactId>
              <version>7.8.0</version>
          </dependency>
          <!-- elasticsearch 的客户端 -->
          <dependency>
              <groupId>org.elasticsearch.client</groupId>
              <artifactId>elasticsearch-rest-high-level-client</artifactId>
              <version>7.8.0</version>
          </dependency>
          <!-- elasticsearch 依赖 2.x 的 log4j -->
          <dependency>
              <groupId>org.apache.logging.log4j</groupId>
              <artifactId>log4j-api</artifactId>
              <version>2.8.2</version>
          </dependency>
          <dependency>
              <groupId>org.apache.logging.log4j</groupId>
              <artifactId>log4j-core</artifactId>
              <version>2.8.2</version>
          </dependency>
          <dependency>
              <groupId>com.fasterxml.jackson.core</groupId>
              <artifactId>jackson-databind</artifactId>
              <version>2.9.9</version>
          </dependency>
          <!-- junit 单元测试 -->
          <dependency>
              <groupId>junit</groupId>
              <artifactId>junit</artifactId>
              <version>4.12</version>
          </dependency>
  ```

* 客户端的创建

  ```java
  public class ESTest_Client {
      public static void main(String[] args) throws IOException {
          //创建ES客户端
          RestHighLevelClient client = new RestHighLevelClient(
                  RestClient.builder(new HttpHost("localhost", 9200, "http"))
          );
  
          //关闭客户端
          client.close();
  
      }
  }
  ```

#### 索引操作

##### 创建索引

```java
import org.apache.http.HttpHost;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.CreateIndexRequest;
import org.elasticsearch.client.indices.CreateIndexResponse;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 10:30
 */
public class ES_Index_Create {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //创建索引
        CreateIndexRequest createIndexRequest = new CreateIndexRequest("user");

        CreateIndexResponse createIndexResponse = esClient.indices().create(createIndexRequest, RequestOptions.DEFAULT);

        boolean acknowledged = createIndexResponse.isAcknowledged();    //响应状态
        System.out.println("索引操作：" + acknowledged);


        esClient.close();
    }
}
```



##### 查看索引

```java
import org.apache.http.HttpHost;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.GetIndexRequest;
import org.elasticsearch.client.indices.GetIndexResponse;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 11:20
 */
public class ESTest_Index_Search {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //查询索引
        GetIndexRequest getIndexRequest = new GetIndexRequest("user");
        GetIndexResponse getIndexResponse = esClient.indices().get(getIndexRequest, RequestOptions.DEFAULT);

        //响应状态
        System.out.println(getIndexResponse.getAliases());
        System.out.println(getIndexResponse.getMappings());
        System.out.println(getIndexResponse.getSettings());


        esClient.close();
    }
}
```

运行结果

![1694575895998](ElasticSearch.assets/1694575895998.png)

对应http的返回结果

![1694576038581](ElasticSearch.assets/1694576038581.png)



##### 删除索引

```java
import org.apache.http.HttpHost;

import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.support.master.AcknowledgedResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 11:36
 */
public class ESTest_Index_Delete {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //删除索引
        DeleteIndexRequest deleteIndexRequest = new DeleteIndexRequest("user");
        AcknowledgedResponse acknowledgedResponse = esClient.indices().delete(deleteIndexRequest, RequestOptions.DEFAULT);

        //响应状态
        System.out.println(acknowledgedResponse.isAcknowledged());

        esClient.close();
    }
}
```



#### 文档操作

##### 新增文档

```java
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zfp.pojo.User;
import org.apache.http.HttpHost;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.xcontent.XContentType;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 16:21
 */
public class Doc_Insert {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //查询索引
        IndexRequest indexRequest = new IndexRequest();
        indexRequest.index("user").id("1001");  //要插入的索引及文档id
        User user = new User("zhangsan", 30, "男");
        ObjectMapper objectMapper = new ObjectMapper();
        String productJson = objectMapper.writeValueAsString(user); //将数据格式转换为JSON
        indexRequest.source(productJson, XContentType.JSON);    //添加文档数据，数据格式为JSON
        IndexResponse indexResponse = esClient.index(indexRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象。

        //打印结果
        System.out.println("_index:" + indexResponse.getIndex());
        System.out.println("_id:" + indexResponse.getId());
        System.out.println("_result:" + indexResponse.getResult());

        esClient.close();
    }
}
```



##### 修改文档

```java
import org.apache.http.HttpHost;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.xcontent.XContentType;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 16:43
 */
public class Doc_UpDate {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //修改文档
        UpdateRequest updateRequest = new UpdateRequest();
        updateRequest.index("user").id("1001"); //索引及文档ID
        updateRequest.doc(XContentType.JSON, "sex", "女");   //设置请求体，对数据进行修改
        UpdateResponse updateResponse = esClient.update(updateRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        //打印结果
        System.out.println("_index:" + updateResponse.getIndex());
        System.out.println("_id:" + updateResponse.getId());
        System.out.println("_result:" + updateResponse.getResult());


        esClient.close();
    }
}
```



##### 查询文档

```java
import org.apache.http.HttpHost;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 17:02
 */
public class Doc_Search {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //查找文档
        GetRequest getRequest = new GetRequest().index("user").id("1001");
        GetResponse getResponse = esClient.get(getRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        //打印结果信息
        System.out.println("_index:" + getResponse.getIndex());
        System.out.println("_type:" + getResponse.getType());
        System.out.println("_id:" + getResponse.getId());
        System.out.println("source:" + getResponse.getSourceAsString());

        esClient.close();
    }
}

```



##### 删除文档

```java
import org.apache.http.HttpHost;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 17:29
 */
public class Doc_Delete {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        DeleteRequest deleteRequest = new DeleteRequest().index("user").id("1001");
        DeleteResponse deleteResponse = esClient.delete(deleteRequest, RequestOptions.DEFAULT);

        //打印信息
        System.out.println(deleteResponse.toString());

        esClient.close();
    }
}
```



##### 批量操作

###### 批量新增

```java
    @Test
    public void testBatchInsert() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        BulkRequest bulkRequest = new BulkRequest();    //创建批量新增请求对象
        bulkRequest.add(new IndexRequest().index("user").id("1001").source(XContentType.JSON, "name", "zhangsan", "age", 30, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1002").source(XContentType.JSON, "name", "lisi", "age", 30, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1003").source(XContentType.JSON, "name", "wangwu", "age", 40, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1004").source(XContentType.JSON, "name", "wangwu1", "age", 40, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1005").source(XContentType.JSON, "name", "wangwu2", "age", 50, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1006").source(XContentType.JSON, "name", "wangwu3", "age", 50, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1007").source(XContentType.JSON, "name", "wangwu44", "age", 60, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1008").source(XContentType.JSON, "name", "wangwu555", "age", 60, "sex", "男"));

        BulkResponse bulkResponse = esClient.bulk(bulkRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        System.out.println(bulkResponse.getTook()); //花费时间
        System.out.println(Arrays.toString(bulkResponse.getItems()));   //每个响应结果

        esClient.close();
    }
```



###### 批量删除

```java
    @Test
    public void testBatchDelete() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        BulkRequest bulkRequest = new BulkRequest();
        bulkRequest.add(new DeleteRequest().index("user").id("1001"));
        bulkRequest.add(new DeleteRequest().index("user").id("1002"));
        bulkRequest.add(new DeleteRequest().index("user").id("1003"));

        BulkResponse bulkResponse = esClient.bulk(bulkRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        System.out.println("took:" + bulkResponse.getTook());   //花费时间
        System.out.println("items:" + bulkResponse.getItems());

        esClient.close();
    }
```



#### 高级查询

##### 请求体查询

###### 查询所有索引数据

```java
//查询所有索引数据
    @Test
    public void testQueryRequestBody() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //创建请求对象
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices("student");

        //构建查询的请求体
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchAllQuery());   //查询所有数据
        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);

        SearchHits hits = searchResponse.getHits(); //查询匹配

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### term 查询，查询条件为关键字

```java
//term 查询，查询条件为关键字
    @Test
    public void testTerm() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //创建请求对象
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices("student");

        //构建查询的请求体
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.termQuery("age", 30));
        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### 分页查询

```java
    //分页查询
    @Test
    public void testPageQuery() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //创建搜索请求对象
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices("student");

        //构建查询的请求体
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchAllQuery());
        searchSourceBuilder.from(0);    //当前页其实索引(第一条数据的顺序号)，from
        searchSourceBuilder.size(2);    //每页显示多少条size

        searchRequest.source(searchSourceBuilder);
        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);

        SearchHits hits = searchResponse.getHits();//查询匹配

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### 数据排序

```java
    //排序
    @Test
    public void testSort() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices("student");

        //构建请求体
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchAllQuery());
        searchSourceBuilder.sort("age", SortOrder.DESC);    //排序

        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### 过滤字段查询

```java
    //过滤字段查询
    @Test
    public void testFilter() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //创建搜索请求对象
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices("student");

        //构建查询的请求体
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchAllQuery());
        String[] includes = {"name", "age"};
        String[] excludes = {};
        searchSourceBuilder.fetchSource(includes, excludes);    //过滤字段查询

        searchRequest.source(searchSourceBuilder);
        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### bool查询

```java
//bool查询
    @Test
    public void testBool() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest("student");

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        boolQueryBuilder.must(QueryBuilders.matchQuery("age", 30)); //必须包含
        boolQueryBuilder.mustNot(QueryBuilders.matchQuery("name", "zhangsan")); //一定不含
        boolQueryBuilder.should(QueryBuilders.matchQuery("sex", "男"));  //可能包含，理解为或

        searchSourceBuilder.query(boolQueryBuilder);
        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### 范围查询

```java
    //范围查询
    @Test
    public void testRange() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest("student");

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();

        RangeQueryBuilder rangeQueryBuilder = QueryBuilders.rangeQuery("age");
        rangeQueryBuilder.gte("30");    //大于等于
        rangeQueryBuilder.lte("40");    //小于等于

        searchSourceBuilder.query(rangeQueryBuilder);
        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



###### 模糊查询

```java
    //模糊查询
    @Test
    public void testFuzz() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest("student");

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.fuzzyQuery("name", "zhangsan").fuzziness(Fuzziness.ONE));

        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



##### 高亮查询

```java
    //高亮查询
    @Test
    public void testHighlight() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest("student");

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        TermsQueryBuilder termsQueryBuilder = QueryBuilders.termsQuery("name", "zhangsan");
        searchSourceBuilder.query(termsQueryBuilder);   //设置查询方式

        //构建高亮字段
        HighlightBuilder highlightBuilder = new HighlightBuilder();
        highlightBuilder.preTags("<font color='red'>"); //设置标签前缀
        highlightBuilder.postTags("</font>");   //设置标签后缀
        highlightBuilder.field("name"); //设置高亮字段

        searchSourceBuilder.highlighter(highlightBuilder);  //设置高亮构建对象
        searchRequest.source(searchSourceBuilder);

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
            Map<String, HighlightField> highlightFields = hit.getHighlightFields();
            System.out.println(highlightFields);
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```



##### 聚合查询

```java
    //聚合查询——————————最大年龄
    @Test
    public void testMax() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest().indices("student");

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.aggregation(AggregationBuilders.max("maxAge").field("age"));

        searchRequest.source(searchSourceBuilder);  //设置请求体
        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT);
        SearchHits hits = searchResponse.getHits();

        System.out.println(searchResponse);
        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");

        esClient.close();
    }
```

![1694680827108](ElasticSearch.assets/1694680827108.png)

```java
    //分组统计
    @Test
    public void testGroup() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        SearchRequest searchRequest = new SearchRequest().indices("student");

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.aggregation(AggregationBuilders.terms("age_groupby").field("age"));
        searchRequest.source(searchSourceBuilder);  //设置请求体

        SearchResponse searchResponse = esClient.search(searchRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象
        SearchHits hits = searchResponse.getHits();

        System.out.println(searchResponse);
        System.out.println("took:" + searchResponse.getTook());
        System.out.println("timeout:" + searchResponse.isTimedOut());
        System.out.println("total:" + hits.getTotalHits());
        System.out.println("MaxScore:" + hits.getMaxScore());
        System.out.println("hits ==================>>");
        for (SearchHit hit : hits) {
            //输出每条查询的结果信息
            System.out.println(hit.getSourceAsString());
        }
        System.out.println("<<=========================");


        esClient.close();
    }
```

![1694680772127](ElasticSearch.assets/1694680772127.png)



# 附录

## elasticsearch-head使用

将elasticsearch-head-chrome-plugin文件夹，直接拖拽至chrome的扩展程序中

![1696656005150](ElasticSearch.assets/1696656005150.png)

## Kibana

> 下载地址：https://artifacts.elastic.co/downloads/kibana/kibana-7.8.0-windows-x86_64.zip

* 解压缩下载的 zip 文件
* 修改 config/kibana.yml 文件

```properties
# 默认端口 server.port: 5601 # ES 服务器的地址
elasticsearch.hosts: ["http://localhost:9200"] # 索引名
kibana.index: ".kibana"
# 支持中文
i18n.locale: "zh-CN"
```

* Windows 环境下执行 bin/kibana.bat 文件
* 通过浏览器访问 : http://localhost:5601

![1696693994821](ElasticSearch.assets/1696693994821.png)

## ElasticSearch优化

### 分片策略

#### 合理设置分片数

> 注：索引一旦创建，不能重新修改分片数。
>
> 分片的一些特点
>
> * 一个分片的底层即为一个 Lucene 索引，会消耗一定文件句柄、内存、以及 CPU 运转。
> * 每一个搜索请求都需要命中索引中的每一个分片，如果每一个分片都处于不同的节点还好， 但如果多个分片都需要在同一个节点上竞争使用相同的资源就有些糟糕了。
> * 用于计算相关度的词项统计信息是基于分片的。如果有许多分片，每一个都只有很少的数据会导致很低的相关度。

> 一般要遵循的一些原则：
>
> * 控制每个分片占用的硬盘容量不超过ES 的最大 JVM 的堆空间设置（一般设置不超过 32G，参考下文的 JVM 设置原则），因此，如果索引的总容量在 500G 左右，那分片大小在 16 个左右即可；当然，最好同时考虑原则 2
> * 考虑一下 node 数量，一般一个节点有时候就是一台物理机，如果分片数过多，大大超过了节点数，很可能会导致一个节点上存在多个分片，一旦该节点故障，即使保持了 1 个以上的副本，同样有可能会导致数据丢失，集群无法恢复。所以， ==一般都设置分片数不超过节点数的3 倍==
> * 主分片，副本和节点最大数之间数量，我们分配的时候可以参考以下关系：
>   * 节点数<=主分片数*（副本数+1）

#### 推迟分片分配

> 某些结点宕机后，会导致分片重新分配。
>
> ​	对于节点瞬时中断的问题，默认情况，集群会等待一分钟来查看节点是否会重新加入，如果这个节点在此期间重新加入，重新加入的节点会保持其现有的分片数据，不会触发新的分片分配。这样就可以减少 ES 在自动再平衡可用分片时所带来的极大开销。
>
> ​	通过修改参数 delayed_timeout ，可以延长再均衡的时间，可以全局设置也可以在索引级别进行修改：
>
> ```json
> # PUT /_all/_settings
> {
> "settings": { "index.unassigned.node_left.delayed_timeout": "5m"}
> }
> ```
>
> 

### 路由选择

#### 不带 routing 查询

在查询的时候因为不知道要查询的数据具体在哪个分片上，所以整个过程分为 2 个步骤

* 分发：请求到达协调节点后，协调节点将查询请求分发到每个分片上。
* 聚合: 协调节点搜集到每个分片上查询结果，在将查询的结果进行排序，之后给用户返回结果。

#### 带 routing 查询

查询的时候，可以直接根据 routing 信息定位到某个分配查询，不需要查询所有的分配，经过协调节点排序。

`shard = hash(routing) % number_of_primary_shards`

routing 默认值是文档的 id，也可以采用自定义值，比如用户 id。

### 写入速度优化

​	针对于搜索性能要求不高，但是对写入要求较高的场景，我们需要尽可能的选择恰当写优化策略。综合来说，可以考虑以下几个方面来提升写索引的性能：

* 加大 Translog Flush ，目的是降低 Iops、Writeblock。
* 增加 Index Refresh 间隔，目的是减少 Segment Merge 的次数。
* 调整 Bulk 线程池和队列。
* 优化节点间的任务分布。
* 优化 Lucene 层的索引建立，目的是降低 CPU 及 IO。

#### 批量数据提交

​	ES 提供了 Bulk API 支持批量操作，当我们有大量的写任务时，可以使用 Bulk 来进行批量写入。

​	通用的策略如下：Bulk 默认设置批量提交的数据量不能超过 100M。数据条数一般是根据文档的大小和服务器性能而定的，但是单次批处理的数据大小应从 5MB～15MB 逐渐增加，当性能没有提升时，把这个数据量作为最大值。

#### 合理使用合并

>  	Lucene 以段的形式存储数据。当有新的数据写入索引时，Lucene 就会自动创建一个新的段。
>
> ​	随着数据量的变化，段的数量会越来越多，消耗的多文件句柄数及 CPU 就越多，查询效率就会下降。
>
> ​	由于 Lucene 段合并的计算量庞大，会消耗大量的 I/O，所以 ES 默认采用较保守的策略，让后台定期进行段合并

#### 减少 Refresh 的次数

> Lucene 在新增数据时，采用了延迟写入的策略，默认情况下索引的 refresh_interval 为1 秒。
>
> Lucene 将待写入的数据先写到内存中，超过 1 秒（默认）时就会触发一次 Refresh，然后 Refresh 会把内存中的的数据刷新到操作系统的文件缓存系统中。
>
> 如果我们对搜索的实效性要求不高，可以将Refresh 周期延长，例如 30 秒。
>
> 这样还可以有效地减少段刷新次数，但这同时意味着需要消耗更多的Heap 内存。

#### 加大Flush设置

> Flush 的主要目的是把文件缓存系统中的段持久化到硬盘，当 Translog的数据量达到512MB 或者 30 分钟时，会触发一次Flush。
>
> index.translog.flush_threshold_size 参数的默认值是 512MB，我们进行修改。
>
> 增加参数值意味着文件缓存系统中可能需要存储更多的数据，所以我们需要为操作系统的文件缓存系统留下足够的空间。

#### 减少副本数量

> ES 为了保证集群的可用性，提供了 Replicas（副本）支持，然而每个副本也会执行分析、索引及可能的合并过程，所以 Replicas 的数量会严重影响写索引的效率。
>
> 当写索引时，需要把写入的数据都同步到副本节点，副本节点越多，写索引的效率就越慢。
>
> 如 果 我 们 需 要 大 批 量进 行 写 入 操 作 ， 可 以 先 禁 止 Replica  复 制 ， 设 置ndex.number_of_replicas: 0 关闭副本。在写入完成后，Replica 修改回正常的状态。

### 内存设置

> 堆内存分配原则：
>
> * 不要超过物理内存的 50%：Lucene 的设计目的是把底层 OS 里的数据缓存到内存中。
>
>   Lucene 的段是分别存储到单个文件中的，这些文件都是不会变化的，所以很利于缓存，同时操作系统也会把这些段文件缓存起来，以便更快的访问。
>
>   如果我们设置的堆内存过大，Lucene 可用的内存将会减少，就会严重影响降低 Lucene 的全文本查询性能。
>
> * 堆内存的大小最好不要超过 32GB：在 Java 中，所有对象都分配在堆上，然后有一个 Klass Pointer指针指向它的类元数据。
>
>   这个指针在 64 位的操作系统上为 64 位，64 位的操作系统可以使用更多的内存（2^64）。在 32 位的系统上为 32 位，32 位的操作系统的最大寻址空间为 4GB（2^32）。
>
>   但是 64 位的指针意味着更大的浪费，因为你的指针本身大了。浪费内存不算，更糟糕的是，更大的指针在主内存和缓存器（例如 LLC, L1 等）之间移动数据的时候，会占用更多的带宽。
>
>   最终我们都会采用 31 G 
>
>   -Xms 31g
>
>   -Xmx 31g
>
>   ![1696697966220](ElasticSearch.assets/1696697966220.png)
>
>   ![1696697978011](ElasticSearch.assets/1696697978011.png)

### 重要配置

| 参数名                             | 参数值        | 说明                                                         |
| ---------------------------------- | ------------- | ------------------------------------------------------------ |
| cluster.name                       | elasticsearch | 配置 ES 的集群名称，默认值是   ES，建议改成与所存数据相关的名称，ES 会自动发现在同一网段下的   集群名称相同的节点 |
| node.name                          | node-1        | 集群中的节点名，在同一个集群中不能重复。节点的名称一旦设置，就不能再改变了。当然，也可以设 置 成 服 务 器 的 主 机 名 称 ， 例 如   node.name:${HOSTNAME}。 |
| node.master                        | true          | 指定该节点是否有资格被选举成为   Master 节点，默认是 True，如果被设置为 True，则只是有资格成为 Master 节点，具体能否成为 Master 节点，需要通   过选举产生。 |
| node.data                          | true          | 指定该节点是否存储索引数据，默认为 True。数据   的增、删、改、查都是在 Data 节点完成的。 |
| index.number_of_shards             | 1             | 设置都索引分片个数，默认是   1 片。也可以在创建索引时设置该值，具体设置为多大都值要根据数据量的大小来定。如果数据量不大，则设置成   1 时效   率最高 |
| index.number_of_replicas           | 1             | 设置默认的索引副本个数，默认为 1 个。副本数越多，集群的可用性越好，但是写索引时需要同步的   数据越多。 |
| transport.tcp.compress             | true          | 设置在节点间传输数据时是否压缩，默认为 False，   不压缩      |
| discovery.zen.minimum_master_nodes | 1             | 设置在选举 Master 节点时需要参与的最少的候选主节点数，默认为   1。如果使用默认值，则当网络不稳定时有可能会出现脑裂。   合理的数值为(master_eligible_nodes/2)+1  ，其中    master_eligible_nodes 表示集群中的候选主节点数 |
| discovery.zen.ping.timeout         | 3s            | 设置在集群中自动发现其他节点时   Ping 连接的超时时间，默认为 3 秒。   在较差的网络环境下需要设置得大一点，防止因误判该节点的存活状态而导致分片的转移 |

## 面试题

> 见
>
> - [<font color="violet">项目课程系列之Elasticsearch.docx</font>](./相关资料/项目课程系列之Elasticsearch.docx)

