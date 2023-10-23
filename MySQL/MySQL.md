# MySQL

> MySQL是一个 开放源代码的关系型数据库管理系统 

## 源

### 源文档

> * [<font color="violet">总目录</font>](./相关资料)
> * [<font color="violet">第01章_数据库概述</font>](./相关资料/第01章_数据库概述.pdf)
> * [<font color="violet">第02章_MySQL环境搭建</font>](./相关资料/第02章_MySQL环境搭建.pdf)
> * [<font color="violet">第03章_基本的SELECT语句.pdf</font>](./相关资料/第03章_基本的SELECT语句.pdf)
> * [<font color="violet">第04章_运算符.pdf</font>](./相关资料/第04章_运算符.pdf)
> * [<font color="violet">第05章_排序与分页.pdf</font>](./相关资料/第05章_排序与分页.pdf)
> * [<font color="violet">第06章_多表查询.pdf</font>](./相关资料/第06章_多表查询.pdf)
> * [<font color="violet">第07章_单行函数.pdf</font>](./相关资料/第07章_单行函数.pdf)
> * [<font color="violet">第08章_聚合函数.pdf</font>](./相关资料/第08章_聚合函数.pdf)
> * [<font color="violet">第09章_子查询.pdf</font>](./相关资料/第09章_子查询.pdf)
> * [<font color="violet">第10章_创建和管理表.pdf</font>](./相关资料/第10章_创建和管理表.pdf)
> * [<font color="violet">第11章_数据处理之增删改.pdf</font>](./相关资料/第11章_数据处理之增删改.pdf)
> * [<font color="violet">第12章_MySQL数据类型精讲.pdf</font>](./相关资料/第12章_MySQL数据类型精讲.pdf)
> * [<font color="violet">第13章_约束.pdf</font>](./相关资料/第13章_约束.pdf)
> * [<font color="violet">第14章_视图.pdf</font>](./相关资料/第14章_视图.pdf)
> * [<font color="violet">第15章_存储过程与函数.pdf</font>](./相关资料/第15章_存储过程与函数.pdf)
> * [<font color="violet">第16章_变量、流程控制与游标.pdf</font>](./相关资料/第16章_变量、流程控制与游标.pdf)
> * [<font color="violet">第17章_触发器.pdf</font>](./相关资料/第17章_触发器.pdf)
> * [<font color="violet">第18章_MySQL8其它新特性.pdf</font>](./相关资料/第18章_MySQL8其它新特性.pdf)
>
> 下篇
>
> * [<font color="violet">总目录1</font>](./相关资料1)
> * [<font color="violet">第01章_Linux下MySQL的安装与使用.pdf</font>](./相关资料1/第01章_Linux下MySQL的安装与使用.pdf)
> * [<font color="violet">第02章_MySQL的数据目录.pdf</font>](./相关资料1/第02章_MySQL的数据目录.pdf)
> * [<font color="violet">第03章_用户与权限管理.pdf</font>](./相关资料1/第03章_用户与权限管理.pdf)
> * [<font color="violet">第04章_逻辑架构.pdf</font>](./相关资料1/第04章_逻辑架构.pdf)
> * [<font color="violet">第05章_存储引擎.pdf</font>](./相关资料1/第05章_存储引擎.pdf)
> * [<font color="violet">第06章_索引的数据结构.pdf</font>](./相关资料1/第06章_索引的数据结构.pdf)
> * [<font color="violet">第08章_索引的创建与设计原则.pdf</font>](./相关资料1/第08章_索引的创建与设计原则.pdf)
> * [<font color="violet">第09章_性能分析工具的使用.pdf</font>](./相关资料1/第09章_性能分析工具的使用.pdf)
> * [<font color="violet">第10章_索引优化与查询优化.pdf</font>](./相关资料1/第10章_索引优化与查询优化.pdf)

## 数据库概述

### RDBMS与非RDBMS

#### 关系型数据库（RDBMS）

**可以理解为一张表**

![1693477372367](MySQL.assets/1693477372367.png)

* 表与表之间的数据记录有关系(relationship)。现实世界中的各种实体以及实体之间的各种联系均用关系模型 来表示。关系型数据库，就是建立在关系模型基础上的数据库。

**主要优势**

* ==复杂查询== 可以用SQL语句方便的在一个表以及多个表之间做非常复杂的数据查询。
* ==事务支持== 使得对于安全性能很高的数据访问要求得以实现。

#### 非关系型数据库

##### 键值型数据库

> 键值型数据库通过 Key-Value 键值的方式来存储数据
> 	典型应用场景是作为`内存缓存` 。 Redis 是最流行的键值型数据库。

![1693483641030](MySQL.assets/1693483641030.png)

##### 文档型数据库

> ​	此类数据库可存放并获取文档，可以是XML、JSON等格式。在数据库中文档作为处理信息的基本单位，一个文档就相当于一条记录。文档数据库所存放的文档，就相当于键值数据库所存放的“值”。MongoDB是最流行的文档型数据库。此外，还有CouchDB等。

##### 搜索引擎数据库

> ​	虽然关系型数据库采用了索引提升检索效率，但是针对全文索引效率却较低。搜索引擎数据库是应用在搜索引擎领域的数据存储形式，由于搜索引擎会爬取大量的数据，并以特定的格式进行存储，这样在检索的时候才能保证性能最优。核心原理是“倒排索引”。
>
> 典型产品：Solr、Elasticsearch、Splunk 等。

##### 列式数据库

> ​	列式数据库是相对于行式存储的数据库，Oracle、MySQL、SQL Server 等数据库都是采用的行式存储（Row-based），而列式数据库是将数据按照列存储到数据库中，这样做的好处是可以大量降低系统的I/O，适合于分布式文件系统，不足在于功能相对有限。典型产品：HBase等。

##### 图数据库

> ​	图形数据库，利用了图这种数据结构存储了实体（对象）之间的关系。图形数据库最典型的例子就是社交网络中人与人的关系，数据模型主要是以节点和边（关系）来实现，特点在于能高效地解决复杂的关系问题。
>
> ​	图形数据库顾名思义，就是一种存储图形关系的数据库。它利用了图这种数据结构存储了实体（对象）之间的关系。关系型数据用于存储明确关系的数据，但对于复杂关系的数据存储却有些力不从心。如社交网络中人物之间的关系，如果用关系型数据库则非常复杂，用图形数据库将非常简单。典型产品：Neo4J、InfoGrid等。

### 关系型数据库设计规则

> * 关系型数据库的典型数据结构就是 数据表 ，这些数据表的组成都是结构化的（Structured）。
> * 将数据放到表中，表再放到库中。
> * 一个数据库中可以有多个表，每个表都有一个名字，用来标识自己。表名具有唯一性。
> * 表具有一些特性，这些特性定义了数据在表中如何存储，

#### 表、记录、字段

* E-R（entity-relationship，实体-联系）模型中有三个主要概念是： 实体集 、 属性 、 联系集 。

  * 一个实体集（class）对应于数据库中的一个表（table），
  * 一个实体（instance）则对应于数据库表中的一行（row），也称为一条记录（record）。
  * 一个属性（attribute）对应于数据库表中的一列（column），也称为一个字段（field）。

  ![1693484181640](MySQL.assets/1693484181640.png)

> 注：
>
> ORM思想 (Object Relational Mapping)体现：
> 数据库中的一个表 <---> Java或Python中的一个类
> 表中的一条数据 <---> 类中的一个对象（或实体）
> 表中的一个列 <----> 类中的一个字段、属性(field)

#### 表的关联关系

> * 表与表之间的数据记录有关系(relationship)。现实世界中的各种实体以及实体之间的各种联系均用关系模型来表示。
> * 四种：一对一关联、一对多关联、多对多关联、自我引用

##### 一对一关联（one-to-one）

* 在实际的开发中应用不多，因为一对一可以创建成一张表。

  * 举例：设计 学生表 ：学号、姓名、手机号码、班级、系别、身份证号码、家庭住址、籍贯、紧急联系人、...
    拆为两个表：两个表的记录是一一对应关系。
    基础信息表 （常用信息）：学号、姓名、手机号码、班级、系别
    档案信息表 （不常用信息）：学号、身份证号码、家庭住址、籍贯、紧急联系人、...

* 两种建表原则：

  * 外键唯一：主表的主键和从表的外键（唯一），形成主外键关系，外键唯一。

  * 外键是主键：主表的主键和从表的主键，形成主外键关系。

    ![1693484601574](MySQL.assets/1693484601574.png)

##### 一对多关系（one-to-many）

* 常见实例场景： 客户表和订单表 ， 分类表和商品表 ， 部门表和员工表 。

  * 举例：
    员工表：编号、姓名、...、所属部门
    部门表：编号、名称、简介

* 一对多建表原则：在从表(多方)创建一个字段，字段作为外键指向主表(一方)的主键

  ![1693496404755](MySQL.assets/1693496404755.png)



##### 多对多（many-to-many）

* 要表示多对多关系，必须创建第三个表，该表通常称为 联接表 ，它将多对多关系划分为两个一对多关系。将这两个表的主键都插入到第三个表中。

  ![1693496497638](MySQL.assets/1693496497638.png)

* 举例1：学生-课程

  * 学生信息表 ：一行代表一个学生的信息（学号、姓名、手机号码、班级、系别...）
  * 课程信息表 ：一行代表一个课程的信息（课程编号、授课老师、简介...）
  * 选课信息表 ：一个学生可以选多门课，一门课可以被多个学生选择

* 举例2：产品-订单

  * “订单”表和“产品”表有一种多对多的关系，这种关系是通过与“订单明细”表建立两个一对多关系来定义的。一个订单可以有多个产品，每个产品可以出现在多个订单中。
  * 产品表 ：“产品”表中的每条记录表示一个产品。
  * 订单表 ：“订单”表中的每条记录表示一个订单。
  * 订单明细表 ：每个产品可以与“订单”表中的多条记录对应，即出现在多个订单中。一个订单可以与“产品”表中的多条记录对应，即包含多个产品。

  ![1693496770490](MySQL.assets/1693496770490.png)

* 举例3：用户-角色

  * 多对多关系建表原则：需要创建第三张表，中间表中至少两个字段，这两个字段分别作为外键指向各自一方的主键。

    ![1693496966624](MySQL.assets/1693496966624.png)

##### 自我引用(Self reference)

![1693496994712](MySQL.assets/1693496994712.png)

### 常见的数据库对象

| **对象**               | **描述**                                                     |
| ---------------------- | ------------------------------------------------------------ |
| 表(TABLE)              | 表是存储数据的逻辑单元，以行和列的形式存在，列就是字段，行就是记录 |
| 数据字典               | 就是系统表，存放数据库相关信息的表。系统表的数据通常由数据库系统维护，程序员通常不应该修改，只可查看 |
| 约束   (CONSTRAINT)    | 执行数据校验的规则，用于保证数据完整性的规则                 |
| 视图(VIEW)             | 一个或者多个数据表里的数据的逻辑显示，视图并不存储数据       |
| 索引(INDEX)            | 用于提高查询性能，相当于书的目录                             |
| 存储过程   (PROCEDURE) | 用于完成一次完整的业务处理，没有返回值，但可通过传出参数将多个值传给调用环境 |
| 存储函数   (FUNCTION)  | 用于完成一次特定的计算，具有一个返回值                       |
| 触发器   (TRIGGER)     | 相当于一个事件监听器，当数据库发生特定事件后，触发器被触发，完成相应的处理 |

## MySQL安装

### Windows

> 安装详见文档[<font color="violet">第02章_MySQL环境搭建</font>](./相关资料/第02章_MySQL环境搭建.pdf)
>
> MySQL配置文件：在`{数据目录}/my.ini`
>
> 以下是第二次安装不同版本MySQL的过程

#### 再次安装MySQL5.7版本的过程

![1693499633514](MySQL.assets/1693499633514.png)

![1693499656179](MySQL.assets/1693499656179.png)

![1693499705109](MySQL.assets/1693499705109.png)

![1693499822420](MySQL.assets/1693499822420.png)

![1693500024660](MySQL.assets/1693500024660.png)

选ok

![1693500037037](MySQL.assets/1693500037037.png)

![1693500088002](MySQL.assets/1693500088002.png)

![1693500098524](MySQL.assets/1693500098524.png)

![1693500118025](MySQL.assets/1693500118025.png)

![1693500128418](MySQL.assets/1693500128418.png)

![1693500240999](MySQL.assets/1693500240999.png)

![1693500272609](MySQL.assets/1693500272609.png)

![1693500310532](MySQL.assets/1693500310532.png)

![1693500332112](MySQL.assets/1693500332112.png)

![1693500380601](MySQL.assets/1693500380601.png)

![1693500403346](MySQL.assets/1693500403346.png)

![1693500718892](MySQL.assets/1693500718892.png)

![1693500726352](MySQL.assets/1693500726352.png)

![1693500747176](MySQL.assets/1693500747176.png)

![1693500797883](MySQL.assets/1693500797883.png)

![1693500816286](MySQL.assets/1693500816286.png)

![1693500842082](MySQL.assets/1693500842082.png)

若要使用命令行，自行配置环境变量

#### 登录相关命令行

**登录**

```powershell
#mysql -h 主机名 -P 端口号 -u 用户名 -p密码
#注：除了-p外其他都可以有空格，
mysql -h localhost -P 3306 -u root -p123456
```

**退出**

```powershell
exit
#或
quit
```

#### MySQL5.7编码问题

> 原因：
> MySQL8.0之后才开始使用utf8
> MySQL5.x及之前默认Latin
>
> 所以，在插入中文字符时会报错

**问题再现：命令行操作sql乱码问题**

```java
create table student(
	id int,
	name varchar(20) 
);
```

```powershell
mysql> INSERT INTO student VALUES(1,'张三');
ERROR 1366 (HY000): Incorrect string value: '\xD5\xC5\xC8\xFD' for column 'name' at row 1
```

**问题解决**

步骤1：查看编码命令

```mysql
show variables like 'character_%';
show variables like 'collation_%';
```

```powershell
mysql> show variables like 'character_%';
+--------------------------+---------------------------------------+
| Variable_name            | Value                                 |
+--------------------------+---------------------------------------+
| character_set_client     | gbk                                   |
| character_set_connection | gbk                                   |
| character_set_database   | latin1                                |
| character_set_filesystem | binary                                |
| character_set_results    | gbk                                   |
| character_set_server     | latin1                                |
| character_set_system     | utf8                                  |
| character_sets_dir       | D:\app\MySQL\MySQL5.7\share\charsets\ |
+--------------------------+---------------------------------------+


mysql> show variables like 'collation_%';
+----------------------+-------------------+
| Variable_name        | Value             |
+----------------------+-------------------+
| collation_connection | gbk_chinese_ci    |
| collation_database   | latin1_swedish_ci |
| collation_server     | latin1_swedish_ci |
+----------------------+-------------------+
3 rows in set, 1 warning (0.00 sec)
```

步骤2：修改mysql的数据目录下的my.ini配置文件

```ini
[mysql] #大概在63行左右，在其下添加
...
default-character-set=utf8 #默认字符集
[mysqld] # 大概在76行左右，在其下添加
...
character-set-server=utf8
collation-server=utf8_general_ci
```

步骤3：重启服务并查看编码命令

```powershell
mysql> show variables like 'character_%';
+--------------------------+---------------------------------------+
| Variable_name            | Value                                 |
+--------------------------+---------------------------------------+
| character_set_client     | gbk                                   |
| character_set_connection | gbk                                   |
| character_set_database   | utf8                                  |
| character_set_filesystem | binary                                |
| character_set_results    | gbk                                   |
| character_set_server     | utf8                                  |
| character_set_system     | utf8                                  |
| character_sets_dir       | D:\app\MySQL\MySQL5.7\share\charsets\ |
+--------------------------+---------------------------------------+
8 rows in set, 1 warning (0.00 sec)

mysql> show variables like 'collation_%';
+----------------------+-----------------+
| Variable_name        | Value           |
+----------------------+-----------------+
| collation_connection | gbk_chinese_ci  |
| collation_database   | utf8_general_ci |
| collation_server     | utf8_general_ci |
+----------------------+-----------------+
3 rows in set, 1 warning (0.00 sec)
```



### Linux

> 详情参考：
> [<font color="violet">第01章_Linux下MySQL的安装与使用.pdf</font>](./相关资料1/第01章_Linux下MySQL的安装与使用.pdf)
>
> 注意：在VMare中克隆虚拟机，需要改动四个地方：mac地址、主机名、ip地址、UUID。
>
> 以下仅演示快速安装的过程，注意我的目录与你的目录的区别（CentOS 7 下）

#### MySQL卸载

```shell
#1. 关闭 mysql 服务
systemctl stop mysqld.service

#2. 查看当前 mysql 安装状况
rpm -qa | grep -i mysql
# 或
yum list installed | grep mysql

#3. 卸载上述命令查询出的已安装程序			务必卸载干净，反复执行 rpm -qa | grep -i mysql 确认是否有卸载残留
yum remove mysql-xxx mysql-xxx mysql-xxx mysqk-xxxx

#4. 删除 mysql 相关文件
#查找相关文件
find / -name mysql
#删除上述命令查找出的相关文件
rm -rf xxx

#5.删除 my.cnf
rm -rf /etc/my.cnf
```

#### MySQL安装

> 安装前需要的依赖包（一般系统会自带）

```shell
#1. 检查/tmp临时目录权限（必不可少）
chmod -R 777 /tmp

#2. 安装前，检查依赖。 		注：此步骤一般可略过，一般系统装的时候都会有
rpm -qa | grep libaio
rpm -qa | grep net-tools
```

![1697561219048](MySQL.assets/1697561219048.png)

![1697561224780](MySQL.assets/1697561224780.png)

```shell
#1. 将安装程序拷贝到/opt目录下，顺序安装（必须按照顺序执行）		其他版本少几个包没事，但一定要顺序安装
rpm -ivh mysql-community-common-8.0.25-1.el7.x86_64.rpm
rpm -ivh mysql-community-client-plugins-8.0.25-1.el7.x86_64.rpm
rpm -ivh mysql-community-libs-8.0.25-1.el7.x86_64.rpm
rpm -ivh mysql-community-client-8.0.25-1.el7.x86_64.rpm
rpm -ivh mysql-community-server-8.0.25-1.el7.x86_64.rpm
#中途报错执行		清除之前安装过的依赖即可，，此语可清除mariadb等
yum remove mysql-libs
```

```shell
#2.验证是否安装成功
#类似java -version
mysql --version
#或
mysqladmin --version

rpm -qa|grep -i mysql
```

![1697562141234](MySQL.assets/1697562141234.png)

![1697562146514](MySQL.assets/1697562146514.png)

```mysql
#3.服务的初始化
mysqld --initialize --user=mysql

#查看初始密码，     root@localhost: 后面就是初始化的密码
cat /var/log/mysqld.log
```

![1697562254341](MySQL.assets/1697562254341.png)

```mysql
#4.启动MySQL，查看状态		加不加.service后缀都可以
systemctl start mysqld.service		#启动
systemctl status mysqld.service		#查看状态
#查看进程
ps -ef | grep -i mysql
```

![1697562385900](MySQL.assets/1697562385900.png)

![1697562424663](MySQL.assets/1697562424663.png)

```mysql
#5.查看MySQL服务是否自启动	默认就是enabled
systemctl list-unit-files|grep mysqld.service

#根据需要设置是否开机自启
systemctl enable mysqld.service		#开机自启
systemctl disable mysqld.service	#开机不自启
```

```shell
#6.首次登录
#查看初始密码，     root@localhost: 后面就是初始化的密码
cat /var/log/mysqld.log
#登录输入密码
mysql -hlocalhost -P3306 -uroot -p

#修改密码		
ALTER USER 'root'@'%' IDENTIFIED BY 'new_password';
```

```shell
#7.关闭防火墙
service iptables stop		#CentOS7
#CentOS8
systemctl status firewalld.service		
systemctl stop firewalld.service
```

#### MySQL5.x字符集修改

```mysql
#1.查看默认使用的字符集
show variables like 'character%';
# 或者
show variables like '%char%';

#2.修改字符集
vim /etc/my.cnf
#添加		character_set_server=utf8
```

![1697565087685](MySQL.assets/1697565087685.png)

#### MySQL8.0远程登录可能出现的问题

![1697563354274](MySQL.assets/1697563354274.png)

```mysql
#注：这是图形化工具版本过老。
#现在的加密规则是caching_sha2_password			还原到原来的加密规则mysql_native_password
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'abc123';
```



## SQL概述

### SQL分类

> 分类：
>
> * ==DDL（Data Definition Languages、数据定义语言）==
>
>   这些语句定义了不同的数据库、表、视图、索引等数据库对象，还可以用来创建、删除、修改数据库和数据表的结构。
>
>   主要的语句关键字包括 `CREATE` 、 `DROP` 、 `ALTER` 等。
>
> * ==DML（Data Manipulation Language、数据操作语言）==
>
>   用于添加、删除、更新和查询数据库记录，并检查数据完整性。
>
>   主要的语句关键字包括 `INSERT` 、 `DELETE` 、 `UPDATE` 、 `SELECT `等。
>
> * ==DCL（Data Control Language、数据控制语言）==
>
>   用于定义数据库、表、字段、用户的访问权限和安全级别。
>
>   主要的语句关键字包括 `GRANT` 、 `REVOKE` 、 `COMMIT` 、 `ROLLBACK` 、 `SAVEPOINT` 等。

> ​	因为查询语句使用的非常的频繁，所以很多人把查询语句单拎出来一类：DQL（数据查询语言）。还有单独将 COMMIT 、 ROLLBACK 取出来称为TCL （Transaction Control Language，事务控制语言）。

### SQL语言的规则与规范

#### 基本规则

> 命令行的方式下，可以以`\g` 或 `\G `结束。以达到行转列显示
>
> ```mysql
> mysql> show create table employees\G
> *************************** 1. row ***************************
>        Table: employees
> Create Table: CREATE TABLE `employees` (
>   `employee_id` int(6) NOT NULL DEFAULT '0',
>   `first_name` varchar(20) DEFAULT NULL,
>   `last_name` varchar(25) NOT NULL,
>   `email` varchar(25) NOT NULL,
>   `phone_number` varchar(20) DEFAULT NULL,
>   `hire_date` date NOT NULL,
>   `job_id` varchar(10) NOT NULL,
>   `salary` double(8,2) DEFAULT NULL,
>   `commission_pct` double(2,2) DEFAULT NULL,
>   `manager_id` int(6) DEFAULT NULL,
>   `department_id` int(4) DEFAULT NULL,
>   PRIMARY KEY (`employee_id`),
>   UNIQUE KEY `emp_email_uk` (`email`),
>   UNIQUE KEY `emp_emp_id_pk` (`employee_id`),
>   KEY `emp_dept_fk` (`department_id`),
>   KEY `emp_job_fk` (`job_id`),
>   KEY `emp_manager_fk` (`manager_id`),
>   CONSTRAINT `emp_dept_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
>   CONSTRAINT `emp_job_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`),
>   CONSTRAINT `emp_manager_fk` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`)
> ) ENGINE=InnoDB DEFAULT CHARSET=utf8
> 1 row in set (0.00 sec)
> ```
>
> 
>
> 关于标点符号
>
> * 字符串型和日期时间类型的数据可以使用单引号`' '`表示
>
>   ```mysql
>   INSERT INTO test.student VALUES (1002, 'Tom');      #字符串、日期时间类型的变量需要使用一对 '' 表示
>   ```
>
> * 列的别名，尽量使用双引号`" "`，而且不建议省略as

#### 大小写规范

> * ==MySQL 在 Windows 环境下是大小写不敏感的==
> * ==MySQL 在 Linux 环境下是大小写敏感的==
>   * 数据库名、表名、表的别名、变量名是严格区分大小写的
>   * 关键字、函数名、列名(或字段名)、列的别名(字段的别名) 是忽略大小写的。
> * ==推荐采用统一的书写规范==
>   * 数据库名、表名、表别名、字段名、字段别名等都小写
>   * SQL 关键字、函数名、绑定变量等都大写

#### 注释

> ```mysql
> 单行注释：#注释文字(MySQL特有的方式)
> 单行注释：-- 注释文字(--后面必须包含一个空格。)
> 多行注释：/* 注释文字 */
> ```

#### 命名规则

> 必须保证你的字段没有和保留字、数据库系统或常用方法冲突。如果坚持使用，请在SQL语句中使用`（着重号）引起来
>
> ```mysql
> #其中order使用``飘号，因为order和系统关键字或系统函数名等预定义标识符重名了
> CREATE TABLE `order`(
>     id INT,
>    lname VARCHAR(20)
> );
> 
> select id as "编号", `name` as "姓名" from t_stu; #起别名时，as都可以省略
> select id as 编号, `name` as 姓名 from t_stu; #如果字段别名中没有空格，那么可以省略""
> select id as 编 号, `name` as 姓 名 from t_stu; #错误，如果字段别名中有空格，那么不能省略"
> ```

## SQL语法

### SELECT

> 注：这样复制表，只是数据赋值过来了，除了not null其它约束都没有复制过来。

#### 基本的SELECT语句

> ```mysql
> #5. 最基本的SELECT语句： SELECT 字段1,字段2,... FROM 表名 
> SELECT 1 + 1,3 * 2;
> SELECT 1 + 1,3 * 2 FROM DUAL; #dual：伪表
> 
> 
> SELECT  * FROM departments;	#选择全部列
> SELECT department_id, location_id FROM departments;		#选择特定的列
> 
> #6. 列的别名
> # as:全称：alias(别名),可以省略
> # 列的别名可以使用一对""引起来，不要使用''。	mysql不那么严谨，拿到oracle中就有可能报错。
> SELECT employee_id emp_id,last_name AS lname,department_id "部门id",salary * 12 AS "annual sal"
> FROM employees;
> 
> 
> # 7. 去除重复行
> SELECT DISTINCT department_id FROM employees;
> SELECT salary,DISTINCT department_id FROM employees;	#错误的：
> SELECT DISTINCT department_id,salary FROM employees;	#将department_id,salary当作一个整体去重
> 
> #9. 着重号 ``
> SELECT * FROM `order`;		#order 是关键字，不带着重号会报错
> 
> 
> #10. 查询常数
> SELECT 'zfp',123,employee_id,last_name FROM employees;
> mysql> SELECT 'zfp',123,employee_id,last_name FROM employees;
> +-----+-----+-------------+-------------+
> | zfp | 123 | employee_id | last_name   |
> +-----+-----+-------------+-------------+
> | zfp | 123 |         100 | King        |
> | zfp | 123 |         101 | Kochhar     |
> | zfp | 123 |         102 | De Haan     |
> | zfp | 123 |         103 | Hunold      |
> | zfp | 123 |         104 | Ernst       |
> | zfp | 123 |         105 | Austin      |
> | zfp | 123 |         106 | Pataballa   |
> | zfp | 123 |         107 | Lorentz     |
> | zfp | 123 |         108 | Greenberg   |
> | zfp | 123 |         109 | Faviet      |
> | zfp | 123 |         204 | Baer        |
> | zfp | 123 |         205 | Higgins     |
> | zfp | 123 |         206 | Gietz       |
> +-----+-----+-------------+-------------+
> 107 rows in set (0.00 sec)
> 
> #12.过滤数据
> SELECT *  FROM employees WHERE department_id = 90;	#查询90号部门的员工信息
> SELECT * FROM EMPLOYEES WHERE LAST_NAME = 'King'; 	#查询last_name为'King'的员工信息
> SELECT * FROM EMPLOYEES WHERE LAST_NAME = 'king'; 	#注：不建议这么写，虽然也能找到King。mysql本身不严谨
> 
> ```

#### NULL值参与运算

> ==所有运算符或列值遇到null值，运算的结果都为null==
>
> ```mysql
> SELECT 100 + NULL  FROM DUAL;	# null值参与运算，结果为null
> +------------+
> | 100 + NULL |
> +------------+
> |       NULL |
> +------------+
> 1 row in set (0.00 sec)
> ```
>
> 
>
> ```mysql
> SELECT employee_id,salary "月工资",salary * (1 + commission_pct) * 12 "年工资",commission_pct FROM employees;
> 
> +-------------+-----------+-----------+----------------+
> | employee_id | 月工资    | 年工资    | commission_pct |
> +-------------+-----------+-----------+----------------+
> |         100 |  24000.00 |      NULL |           NULL |
> |         101 |  17000.00 |      NULL |           NULL |
> |         102 |  17000.00 |      NULL |           NULL |
> |         103 |   9000.00 |      NULL |           NULL |
> |         104 |   6000.00 |      NULL |           NULL |
> |         105 |   4800.00 |      NULL |           NULL |
> |         106 |   4800.00 |      NULL |           NULL |
> |         107 |   4200.00 |      NULL |           NULL |
> |         108 |  12000.00 |      NULL |           NULL |
> |         109 |   9000.00 |      NULL |           NULL |
> |         110 |   8200.00 |      NULL |           NULL |
> |         144 |   2500.00 |      NULL |           NULL |
> |         145 |  14000.00 | 235200.00 |           0.40 |
> |         146 |  13500.00 | 210600.00 |           0.30 |
> |         147 |  12000.00 | 187200.00 |           0.30 |
> |         148 |  11000.00 | 171600.00 |           0.30 |
> |         149 |  10500.00 | 151200.00 |           0.20 |
> |         150 |  10000.00 | 156000.00 |           0.30 |
> |         151 |   9500.00 | 142500.00 |           0.25 |
> |         152 |   9000.00 | 135000.00 |           0.25 |
> |         153 |   8000.00 | 115200.00 |           0.20 |
> |         154 |   7500.00 | 108000.00 |           0.20 |
> |         203 |   6500.00 |      NULL |           NULL |
> |         204 |  10000.00 |      NULL |           NULL |
> |         205 |  12000.00 |      NULL |           NULL |
> |         206 |   8300.00 |      NULL |           NULL |
> +-------------+-----------+-----------+----------------+
> 107 rows in set (0.00 sec)
> 
> 
> #实际问题的解决方案：引入IFNULL
> SELECT employee_id,salary "月工资",salary * (1 + IFNULL(commission_pct,0)) * 12 "年工资",commission_pct
> FROM `employees`;
> ```

### 运算符

#### 算术运算符

> ​	在Java中，+的左右两边如果有字符串，那么表示字符串的拼接。但是在MySQL中+只表示数值相加。==如果遇到非数值类型，先尝试转成数值，如果转失败，就按0计算==。（补充：MySQL中字符串拼接要使用字符串函数CONCAT()实现）

![1696774039503](MySQL.assets/1696774039503.png)

```mysql
# 在SQL中，+没有连接的作用，就表示加法运算。此时，会将字符串转换为数值（隐式转换）
SELECT 100 + '1'  FROM DUAL;	# 在Java语言中，结果是：1001。 
+-----------+
| 100 + '1' |
+-----------+
|       101 |
+-----------+
1 row in set (0.00 sec)

SELECT 100 + 'a' FROM DUAL;		#此时将'a'看做0处理
+-----------+
| 100 + 'a' |
+-----------+
|       100 |
+-----------+
1 row in set, 1 warning (0.00 sec)

SELECT 100, 100 * 1, 100 * 1.0, 100 / 1.0, 100 / 2,
100 + 2 * 5 / 2,100 / 3, 100 DIV 0  # 分母如果为0，则结果为null
FROM DUAL;

# 取模运算： % mod
SELECT 12 % 3,12 % 5, 12 MOD -5,-12 % 5,-12 % -5 FROM DUAL;	#符号与被摸数一样
+--------+--------+-----------+---------+----------+
| 12 % 3 | 12 % 5 | 12 MOD -5 | -12 % 5 | -12 % -5 |
+--------+--------+-----------+---------+----------+
|      0 |      2 |         2 |      -2 |       -2 |
+--------+--------+-----------+---------+----------+
1 row in set (0.00 sec)

```

![1696774541682](MySQL.assets/1696774541682.png)

#### 比较运算符

> ==符号类运算==
>
> ![1696774824911](MySQL.assets/1696774824911.png)![1696774829228](MySQL.assets/1696774829228.png)

> ==等号运算符==
>
> * 如果相等则返回1，不相等则返回0
>
> * 特殊的
>
>   * 如果等号两边的值一个是整数，另一个是字符串，则MySQL会将字符串转化为数字进行比较。
>
>   * 如果等号两边的值、字符串或表达式中有一个为NULL，则比较结果为NULL。
>
>   * ```mysql
>     mysql> SELECT 1 = 1, 1 = '1', 1 = 0, 'a' = 'a', (5 + 3) = (2 + 6), '' = NULL , NULL =
>     NULL;
>     +-------+---------+-------+-----------+-------------------+-----------+-------------+
>     | 1 = 1 | 1 = '1' | 1 = 0 | 'a' = 'a' | (5 + 3) = (2 + 6) | '' = NULL | NULL = NULL |
>     +-------+---------+-------+-----------+-------------------+-----------+-------------+
>      | 1 	| 1 	| 0		 | 1 		| 1 			| NULL 		| NULL 	|
>     +-------+---------+-------+-----------+-------------------+-----------+-------------+
>     1 row in set (0.00 sec)
>     ```
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> mysql> SELECT 1 = 2, 0 = 'abc', 1 = 'abc' FROM dual;
> +-------+-----------+-----------+
> | 1 = 2 | 0 = 'abc' | 1 = 'abc' |
> +-------+-----------+-----------+
> | 0 	| 1 	     | 0	    |
> +-------+-----------+-----------+
> 1 row in set, 2 warnings (0.00 sec)
> ```
>
> 
>
> ==安全等于运算符==
>
> * 与=并无多大区别，主要用于处理null值
>
> * ```mysql
>   mysql> SELECT 1 <=> NULL, NULL <=> NULL FROM DUAL;
>   +------------+---------------+
>   | 1 <=> NULL | NULL <=> NULL |
>   +------------+---------------+
>   |          0 |             1 |
>   +------------+---------------+
>   1 row in set (0.00 sec)
>   ```
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> ```
>
>
> #练习：查询表中commission_pct为null的数据有哪些
> SELECT last_name,salary,commission_pct
> FROM employees
> WHERE commission_pct <=> NULL;
> ```
> 
> 
> 
> ==非符号运算符==
> 
> ​```mysql
> #① IS NULL \ IS NOT NULL \ ISNULL
> #练习：查询表中commission_pct为null的数据有哪些
> SELECT last_name,salary,commission_pct
> FROM employees
> WHERE commission_pct IS NULL;
> #或
> SELECT last_name,salary,commission_pct
> FROM employees
> WHERE ISNULL(commission_pct);
> 
> 
> #练习：查询表中commission_pct不为null的数据有哪些
> SELECT last_name,salary,commission_pct
> FROM employees
> WHERE commission_pct IS NOT NULL;
> #或
> SELECT last_name,salary,commission_pct
> FROM employees
> WHERE NOT commission_pct <=> NULL;
> 
> 
> #② LEAST() \ GREATEST 
> SELECT LEAST('g','b','t','m'),GREATEST('g','b','t','m') FROM DUAL;
> +------------------------+---------------------------+
> | LEAST('g','b','t','m') | GREATEST('g','b','t','m') |
> +------------------------+---------------------------+
> | b                      | t                         |
> +------------------------+---------------------------+
> 1 row in set (0.00 sec)
> 
> 
> 
> #③ BETWEEN 条件下界1 AND 条件上界2  （查询条件1和条件2范围内的数据，包含边界）
> #查询工资在6000 到 8000的员工信息
> SELECT employee_id,last_name,salary
> FROM employees
> #where salary between 6000 and 8000;
> WHERE salary >= 6000 && salary <= 8000;
> 
> #交换6000 和 8000之后，查询不到数据
> SELECT employee_id,last_name,salary
> FROM employees
> WHERE salary BETWEEN 8000 AND 6000;
> 
> #查询工资不在6000 到 8000的员工信息
> SELECT employee_id,last_name,salary
> FROM employees
> WHERE salary NOT BETWEEN 6000 AND 8000;
> #where salary < 6000 or salary > 8000;
> 
> 
> 
> #④ in (set)\ not in (set)
> #练习：查询部门为10,20,30部门的员工信息
> SELECT last_name,salary,department_id
> FROM employees
> #where department_id = 10 or department_id = 20 or department_id = 30;
> WHERE department_id IN (10,20,30);
> 
> #练习：查询工资不是6000,7000,8000的员工信息
> SELECT last_name,salary,department_id
> FROM employees
> WHERE salary NOT IN (6000,7000,8000);
> 
> 
> #⑤ LIKE :模糊查询
> # % : 代表不确定个数的字符 （0个，1个，或多个）
> #练习：查询last_name中包含字符'a'的员工信息
> SELECT last_name
> FROM employees
> WHERE last_name LIKE '%a%';
> 
> #练习：查询last_name中以字符'a'开头的员工信息
> SELECT last_name
> FROM employees
> WHERE last_name LIKE 'a%';
> 
> #练习：查询last_name中包含字符'a'且包含字符'e'的员工信息
> #写法1：
> SELECT last_name
> FROM employees
> WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';
> #写法2：
> SELECT last_name
> FROM employees
> WHERE last_name LIKE '%a%e%' OR last_name LIKE '%e%a%';
> 
> # _ ：代表一个不确定的字符
> #练习：查询第3个字符是'a'的员工信息
> SELECT last_name
> FROM employees
> WHERE last_name LIKE '__a%';
> 
> #练习：查询第2个字符是_且第3个字符是'a'的员工信息
> #需要使用转义字符: \ 
> SELECT last_name
> FROM employees
> WHERE last_name LIKE '_\_a%';
> 
> #或者  (了解)
> SELECT last_name
> FROM employees
> WHERE last_name LIKE '_$_a%' ESCAPE '$';	#把$当作分隔符
> 
> 
> #⑥ REGEXP \ RLIKE :正则表达式
> SELECT 'shkstart' REGEXP '^shk', 'shkstart' REGEXP 't$', 'shkstart' REGEXP 'hk' FROM DUAL;
> SELECT 'atguigu' REGEXP 'gu.gu','atguigu' REGEXP '[ab]' FROM DUAL;
> 
> 
> ```
>
> 
>
>
> ```
> 
> ```
>
> ```
> 
> ```
>
> ```
> 
> ```

#### 逻辑运算符

> ==逻辑运算符==
>
> ```mysql
> #3. 逻辑运算符： OR ||  AND && NOT ! XOR
> # not 
> SELECT last_name,salary,department_id
> FROM employees
> #where salary not between 6000 and 8000;
> #where commission_pct is not null;
> WHERE NOT commission_pct <=> NULL;
> 
> # XOR :追求的"异"
> SELECT last_name,salary,department_id
> FROM employees
> WHERE department_id = 50 XOR salary > 6000;
> 
> ```



#### 位运算符

> ==位运算符==
>
> ```mysql
> #4. 位运算符： & |  ^  ~  >>   <<
> 
> SELECT 12 & 5, 12 | 5,12 ^ 5 FROM DUAL;
> 
> 
> SELECT 10 & ~1 FROM DUAL;
> 
> #在一定范围内满足：每向左移动1位，相当于乘以2；每向右移动一位，相当于除以2。
> SELECT 4 << 1 , 8 >> 1
> FROM DUAL;
> ```
>
> ![1696776586406](MySQL.assets/1696776586406.png)
>
> ![1696776593780](MySQL.assets/1696776593780.png)
>
> 



### 排序与分页

> 排序
>
> > 注：null值参与排序时，null值最小
>
> ```mysql
> # 1.1 基本使用
> # 使用 ORDER BY 对查询到的数据进行排序操作。
> # 升序：ASC (ascend)
> # 降序：DESC (descend)
> 
> # 练习：按照salary从高到低的顺序显示员工信息
> SELECT employee_id,last_name,salary
> FROM employees
> ORDER BY salary DESC;
> 
> # 练习：按照salary从低到高的顺序显示员工信息
> SELECT employee_id,last_name,salary
> FROM employees
> ORDER BY salary ASC;
> 
> SELECT employee_id,last_name,salary
> FROM employees
> ORDER BY salary; # 如果在ORDER BY 后没有显式指名排序的方式的话，则默认按照升序排列。
> 
> 
> 
> 
> 
> #2. 我们可以使用列的别名，进行排序
> SELECT employee_id,salary,salary * 12 annual_sal
> FROM employees
> ORDER BY annual_sal;
> 
> #列的别名只能在 ORDER BY 中使用，不能在WHERE中使用。
> #如下操作报错！
> SELECT employee_id,salary,salary * 12 annual_sal
> FROM employees
> WHERE annual_sal > 81600;
> #3. 强调格式：WHERE 需要声明在FROM后，ORDER BY之前。
> SELECT employee_id,salary
> FROM employees
> WHERE department_id IN (50,60,70)
> ORDER BY department_id DESC;
> 
> 
> #4. 多级排序
> #练习：显示员工信息，先按照department_id的降序排列，后按照salary的升序排列
> SELECT employee_id,salary,department_id
> FROM employees
> ORDER BY department_id DESC,salary ASC;
> 
> ```
>
> 
>
> 分页
>
> ```mysql
> #2. 分页
> #2.1 mysql使用limit实现数据的分页显示
> 
> # 需求1：每页显示20条记录，此时显示第1页
> SELECT employee_id,last_name
> FROM employees
> LIMIT 0,20;
> #需求：每页显示pageSize条记录，此时显示第pageNo页：
> #公式：LIMIT (pageNo-1) * pageSize,pageSize;
> 
> 
> # LIMIT的格式： 严格来说：LIMIT 位置偏移量,条目数
> # 结构"LIMIT 0,条目数" 等价于 "LIMIT 条目数"
> SELECT employee_id,last_name,salary
> FROM employees
> WHERE salary > 6000
> ORDER BY salary DESC
> #limit 0,10;
> LIMIT 10;
> 
> 
> #2.3 MySQL8.0新特性：LIMIT ... OFFSET ...
> #只是将LIMIT的两个参数进行了调换而已。
> SELECT employee_id,last_name
> FROM employees
> LIMIT 2 OFFSET 31;		#相当于LIMIT 31, 2
> ```
>
> 
>

### 多表查询

> 建议：从sql优化的角度，建议多表查询时，每个字段前都指明其所在的表。
>
> 注：`阿里巴巴开发规范`
> 超过三个表禁止 join。需要 join 的字段，数据类型保持绝对一致；多表关联查询时， 保证被关联的字段需要有索引

#### 92语法

> * 如果给表起了别名，一旦在SELECT或WHERE中使用表名的话，则必须使用表的别名，而不能再使用表的原名。

> ```mysql
> #2. 出现笛卡尔积的错误
> #错误的原因：缺少了多表的连接条件
> #错误的实现方式：每个员工都与每个部门匹配了一遍。
> SELECT employee_id,department_name
> FROM employees,departments;  #查询出2889条记录
> 
> 
> #3. 多表查询的正确方式：需要有连接条件
> SELECT employee_id,department_name
> FROM employees,departments
> #两个表的连接条件
> WHERE employees.`department_id` = departments.department_id;
> 
> #4. 如果查询语句中出现了多个表中都存在的字段，则必须指明此字段所在的表。
> SELECT employees.employee_id,departments.department_name,employees.department_id
> FROM employees,departments
> WHERE employees.`department_id` = departments.department_id;
> 
> 
> #5. 可以给表起别名，在SELECT和WHERE中使用表的别名。
> SELECT emp.employee_id,dept.department_name,emp.department_id
> FROM employees emp,departments dept
> WHERE emp.`department_id` = dept.department_id;
> #如果给表起了别名，一旦在SELECT或WHERE中使用表名的话，则必须使用表的别名，而不能再使用表的原名。
> #如下的操作是错误的：
> SELECT emp.employee_id,departments.department_name,emp.department_id
> FROM employees emp,departments dept
> WHERE emp.`department_id` = departments.department_id;
> 
> 
> #6. 结论：如果有n个表实现多表的查询，则需要至少n-1个连接条件
> #练习：查询员工的employee_id,last_name,department_name,city
> SELECT e.employee_id,e.last_name,d.department_name,l.city,e.department_id,l.location_id
> FROM employees e,departments d,locations l
> WHERE e.`department_id` = d.`department_id`
> AND d.`location_id` = l.`location_id`;
> ```

##### 等值连接vs非等值连接

```mysql
#非等值连接
SELECT e.last_name,e.salary,j.grade_level
FROM employees e,job_grades j
#where e.`salary` between j.`lowest_sal` and j.`highest_sal`;
WHERE e.`salary` >= j.`lowest_sal` AND e.`salary` <= j.`highest_sal`;
```

##### 自连接vs非自连接

```mysql
#自连接
#练习：查询员工id,员工姓名及其管理者的id和姓名
SELECT emp.employee_id,emp.last_name,mgr.employee_id,mgr.last_name
FROM employees emp ,employees mgr
WHERE emp.`manager_id` = mgr.`employee_id`;
```

##### 内连接vs外连接

> 外连接：合并具有同一列的两个以上的表的行, 结果集中除了包含一个表与另一个表匹配的行之外，
>         还查询到了左表 或 右表中不匹配的行。
> 外连接的分类：左外连接、右外连接、满外连接
> 左外连接：两个表在连接过程中除了返回满足连接条件的行以外还返回左表中不满足条件的行，这种连接称为左外连接。
> 右外连接：两个表在连接过程中除了返回满足连接条件的行以外还返回右表中不满足条件的行，这种连接称为右外连接。
>
> ==注：mysql不支持92语法的外连接。所以只能用99语法来实现外连接==

```sql
# 内连接：合并具有同一列的两个以上的表的行, 结果集中不包含一个表与另一个表不匹配的行
SELECT employee_id,department_name
FROM employees e,departments d
WHERE e.`department_id` = d.department_id;  #只有106条记录

#SQL92语法实现外连接：使用 +  ----------MySQL不支持SQL92语法中外连接的写法！
#不支持：
SELECT employee_id,department_name
FROM employees e,departments d
WHERE e.`department_id` = d.department_id(+);


```





#### 99语法

##### 内连接vs外连接

> ==注：mysql的99语法中并不支持全连接。所以只能通过union来实现==
>
> UNION  和 UNION ALL的使用
>
> * UNION：会执行去重操作
> * UNION ALL:不会执行去重操作
> * 注：如果明确知道合并数据后的结果数据不存在重复数据，或者不需要去除重复的数据，则尽量使用UNION ALL语句，以提高数据查询的效率。

```mysql
#SQL99语法实现内连接：
SELECT last_name,department_name
FROM employees e INNER JOIN departments d		#INNER可省略
ON e.`department_id` = d.`department_id`;

SELECT last_name,department_name,city
FROM employees e 
JOIN departments d
ON e.`department_id` = d.`department_id`
JOIN locations l
ON d.`location_id` = l.`location_id`;


#SQL99语法实现外连接：
# 左外连接：
SELECT last_name,department_name
FROM employees e LEFT JOIN departments d
ON e.`department_id` = d.`department_id`;
#右外连接：
SELECT last_name,department_name
FROM employees e RIGHT OUTER JOIN departments d
ON e.`department_id` = d.`department_id`;
#满外连接：mysql不支持FULL OUTER JOIN
SELECT last_name,department_name
FROM employees e FULL OUTER JOIN departments d
ON e.`department_id` = d.`department_id`;


```

> 注：多表连接可以这样写，但不建议
>
> ```mysql
> SELECT last_name,job_title,department_name 
> FROM employees INNER JOIN departments INNER JOIN jobs 
> ON employees.department_id = departments.department_id 
> AND employees.job_id = jobs.job_id;
> ```
>
> 

> 注：全部的连接情况如下图所示：
>
> ![1696858902776](MySQL.assets/1696858902776.png)
>
> ```mysql
> #9. 7种JOIN的实现：
> 
> # 中图：内连接
> SELECT employee_id,department_name
> FROM employees e JOIN departments d
> ON e.`department_id` = d.`department_id`;
> 
> # 左上图：左外连接
> SELECT employee_id,department_name
> FROM employees e LEFT JOIN departments d
> ON e.`department_id` = d.`department_id`;
> 
> # 右上图：右外连接
> SELECT employee_id,department_name
> FROM employees e RIGHT JOIN departments d
> ON e.`department_id` = d.`department_id`;
> 
> # 左中图：
> SELECT employee_id,department_name
> FROM employees e LEFT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE d.`department_id` IS NULL;
> 
> # 右中图：
> SELECT employee_id,department_name
> FROM employees e RIGHT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE e.`department_id` IS NULL;
> 
> 
> # 左下图：满外连接
> # 方式1：左上图 UNION ALL 右中图
> SELECT employee_id,department_name
> FROM employees e LEFT JOIN departments d
> ON e.`department_id` = d.`department_id`
> UNION ALL
> SELECT employee_id,department_name
> FROM employees e RIGHT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE e.`department_id` IS NULL;
> # 方式2：左中图 UNION ALL 右上图
> SELECT employee_id,department_name
> FROM employees e LEFT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE d.`department_id` IS NULL
> UNION ALL
> SELECT employee_id,department_name
> FROM employees e RIGHT JOIN departments d
> ON e.`department_id` = d.`department_id`;
> 
> 
> # 右下图：左中图  UNION ALL 右中图
> SELECT employee_id,department_name
> FROM employees e LEFT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE d.`department_id` IS NULL
> UNION ALL
> SELECT employee_id,department_name
> FROM employees e RIGHT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE e.`department_id` IS NULL;
> ```
>
> 

##### 99语法新特性

**自然连接**

```mysql
# NATURAL JOIN : 它会帮你自动查询两张连接表中`所有相同的字段`，然后进行`等值连接`。
SELECT employee_id,last_name,department_name
FROM employees e NATURAL JOIN departments d;
```

**USING**

```mysql
SELECT employee_id,last_name,department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id;
#相同字段名可以使用using，注此方法不适用于自连接。
SELECT employee_id,last_name,department_name
FROM employees e JOIN departments d
USING (department_id);
```



### 函数（包含分组）

> ![1696949234856](MySQL.assets/1696949234856.png)
>
> https://dev.mysql.com/doc/refman/8.0/en/functions.html

#### 单行函数

##### 数值函数

###### 基本函数

| **函数**            | **用法**                                                     |
| ------------------- | ------------------------------------------------------------ |
| ABS(x)              | 返回x的绝对值                                                |
| SIGN(X)             | 返回X的符号。正数返回1，负数返回-1，0返回0                   |
| PI()                | 返回圆周率的值                                               |
| CEIL(x)，CEILING(x) | 返回大于或等于某个值的最小整数                               |
| FLOOR(x)            | 返回小于或等于某个值的最大整数                               |
| LEAST(e1,e2,e3…)    | 返回列表中的最小值                                           |
| GREATEST(e1,e2,e3…) | 返回列表中的最大值                                           |
| MOD(x,y)            | 返回X除以Y后的余数                                           |
| RAND()              | 返回0~1的随机值                                              |
| RAND(x)             | 返回0~1的随机值，其中x的值用作种子值，相同的X值会产生相同的随机数 |
| ROUND(x)            | 返回一个对x的值进行四舍五入后，最接近于X的整数               |
| ROUND(x,y)          | 返回一个对x的值进行四舍五入后最接近X的值，并保留到小数点后面Y位 |
| TRUNCATE(x,y)       | 返回数字x截断为y位小数的结果                                 |
| SQRT(x)             | 返回x的平方根。当X的值为负数时，返回NULL                     |

> ```mysql
> SELECT ABS(-123),       #123
>        ABS(32),         #32
>        SIGN(-23),       #-1
>        SIGN(43),        #1
>        PI(),            #3.141593
>        CEIL(32.32),     #33
>        CEILING(-43.23), #-43
>        FLOOR(32.32),    #32
>        FLOOR(-43.23),   #-44
>        MOD(12, 5),      #2
>        12 MOD 5,        #2
>        12 % 5           #2
> FROM DUAL;
> ```
>
>
> ```mysql
> #取随机数
> SELECT RAND(), RAND(), RAND(10), RAND(10), RAND(-1), RAND(-1)
> FROM DUAL;
> ```
>
> ![1696950182125](MySQL.assets/1696950182125.png)
>
> ```mysql
> #四舍五入
> SELECT ROUND(123.556),      #124
>        ROUND(123.456, 0),   #123
>        ROUND(123.456, 1),   #123.5
>        ROUND(123.456, 2),   #123.46
>        ROUND(123.456, -1),  #120        负数就向小数点前看
>        ROUND(153.456, -2)   #200
> FROM DUAL;
> 
> #截断操作		123			123.4					120
> SELECT TRUNCATE(123.456, 0), TRUNCATE(123.496, 1), TRUNCATE(129.45, -1)
> FROM DUAL;
> ```

###### 角度与弧度互换函数

| **函数**   | **用法**                              |
| ---------- | ------------------------------------- |
| RADIANS(x) | 将角度转化为弧度，其中，参数x为角度值 |
| DEGREES(x) | 将弧度转化为角度，其中，参数x为弧度值 |

```mysql
#角度与弧度的互换
SELECT RADIANS(30),
       RADIANS(45),
       RADIANS(60),
       RADIANS(90),
       DEGREES(2 * PI()),
       DEGREES(RADIANS(60))
FROM DUAL;
```

![1696950677452](MySQL.assets/1696950677452.png)

###### 三角函数

| **函数**   | **用法**                                                     |
| ---------- | ------------------------------------------------------------ |
| SIN(x)     | 返回x的正弦值，其中，参数x为弧度值                           |
| ASIN(x)    | 返回x的反正弦值，即获取正弦为x的值。如果x的值不在-1到1之间，则返回NULL |
| COS(x)     | 返回x的余弦值，其中，参数x为弧度值                           |
| ACOS(x)    | 返回x的反余弦值，即获取余弦为x的值。如果x的值不在-1到1之间，则返回NULL |
| TAN(x)     | 返回x的正切值，其中，参数x为弧度值                           |
| ATAN(x)    | 返回x的反正切值，即返回正切值为x的值                         |
| ATAN2(m,n) | 返回两个参数的反正切值                                       |
| COT(x)     | 返回x的余切值，其中，X为弧度值                               |

```mysql
#三角函数
SELECT SIN(RADIANS(30)), DEGREES(ASIN(1)), TAN(RADIANS(45)), DEGREES(ATAN(1))
FROM DUAL;
```

![1696950771635](MySQL.assets/1696950771635.png)

###### 指数与对数

| **函数**             | **用法**                                             |
| -------------------- | ---------------------------------------------------- |
| POW(x,y)，POWER(X,Y) | 返回x的y次方                                         |
| EXP(X)               | 返回e的X次方，其中e是一个常数，2.718281828459045     |
| LN(X)，LOG(X)        | 返回以e为底的X的对数，当X <= 0 时，返回的结果为NULL  |
| LOG10(X)             | 返回以10为底的X的对数，当X <= 0 时，返回的结果为NULL |
| LOG2(X)              | 返回以2为底的X的对数，当X <= 0 时，返回NULL          |

> ```mysql
> #指数和对数
> SELECT POW(2, 5), POWER(2, 4), EXP(2)
> FROM DUAL;
> ```
>
> ![1696951238938](MySQL.assets/1696951238938.png)
>
> ```mysql
> SELECT LN(EXP(2)), LOG(EXP(2)), LOG10(10), LOG2(4)
> FROM DUAL;
> ```
>
> ![1696951302287](MySQL.assets/1696951302287.png)

###### 进制间的转换

| **函数**      | **用法**                 |
| ------------- | ------------------------ |
| BIN(x)        | 返回x的二进制编码        |
| HEX(x)        | 返回x的十六进制编码      |
| OCT(x)        | 返回x的八进制编码        |
| CONV(x,f1,f2) | 返回f1进制数变成f2进制数 |

```mysql
#进制间的转换
SELECT BIN(10), HEX(10), OCT(10), CONV(10, 10, 8)
FROM DUAL;
```

![1696951401897](MySQL.assets/1696951401897.png)



##### 字符串函数

> 注：MySQL中，字符串的位置是从1开始的

| **函数**                          | **用法**                                                     |
| --------------------------------- | ------------------------------------------------------------ |
| ASCII(S)                          | 返回字符串S中的第一个字符的ASCII码值                         |
| CHAR_LENGTH(s)                    | 返回字符串s的字符数。作用与CHARACTER_LENGTH(s)相同           |
| LENGTH(s)                         | 返回字符串s的字节数，和字符集有关                            |
| CONCAT(s1,s2,...... ,sn)          | 连接s1,s2,...... ,sn为一个字符串                             |
| CONCAT_WS(x, s1,s2,...... ,sn)    | 同CONCAT(s1,s2,...)函数，但是每个字符串之间要加上x           |
| INSERT(str, idx, len, replacestr) | 将字符串str从第idx位置开始，len个字符长的子串替换为字符串replacestr |
| REPLACE(str, a, b)                | 用字符串b替换字符串str中所有出现的字符串a                    |
| UPPER(s) 或 UCASE(s)              | 将字符串s的所有字母转成大写字母                              |
| LOWER(s) 或LCASE(s)               | 将字符串s的所有字母转成小写字母                              |
| LEFT(str,n)                       | 返回字符串str最左边的n个字符                                 |
| RIGHT(str,n)                      | 返回字符串str最右边的n个字符                                 |
| LPAD(str, len, pad)               | 用字符串pad对str最左边进行填充，直到str的长度为len个字符     |
| RPAD(str ,len, pad)               | 用字符串pad对str最右边进行填充，直到str的长度为len个字符     |
| LTRIM(s)                          | 去掉字符串s左侧的空格                                        |
| RTRIM(s)                          | 去掉字符串s右侧的空格                                        |
| TRIM(s)                           | 去掉字符串s开始与结尾的空格                                  |
| TRIM(s1 FROM   s)                 | 去掉字符串s开始与结尾的s1                                    |
| TRIM(LEADING s1 FROM s)           | 去掉字符串s开始处的s1                                        |
| TRIM(TRAILING s1 FROM s)          | 去掉字符串s结尾处的s1                                        |
| REPEAT(str, n)                    | 返回str重复n次的结果                                         |
| SPACE(n)                          | 返回n个空格                                                  |
| STRCMP(s1,s2)                     | 比较字符串s1,s2的ASCII码值的大小                             |
| SUBSTR(s,index,len)               | 返回从字符串s的index位置其len个字符，作用与SUBSTRING(s,n,len)、   MID(s,n,len)相同 |
| LOCATE(substr,str)                | 返回字符串substr在字符串str中首次出现的位置，作用于POSITION(substr  IN str)、INSTR(str,substr)相同。未找到，返回0 |
| ELT(m,s1,s2,…,sn)                 | 返回指定位置的字符串，如果m=1，则返回s1，如果m=2，则返回s2，如果m=n，则返回sn |
| FIELD(s,s1,s2,…,sn)               | 返回字符串s在字符串列表中第一次出现的位置                    |
| FIND_IN_SET(s1,s2)                | 返回字符串s1在字符串s2中出现的位置。其中，字符串s2是一个以逗号分隔的字符串 |
| REVERSE(s)                        | 返回s反转后的字符串                                          |
| NULLIF(value1,value2)             | 比较两个字符串，如果value1与value2相等，则返回NULL，否则返回   value1 |

> ```mysql
> #2. 字符串函数
> SELECT ASCII('Abcdfsf'),
>        CHAR_LENGTH('hello'),
>        CHAR_LENGTH('我们'),
>        LENGTH('hello'),
>        LENGTH('我们')
> FROM DUAL;
> ```
>
> ![1696951840235](MySQL.assets/1696951840235.png)
>
> ```mysql
> # xxx worked for yyy
> SELECT CONCAT(emp.last_name, ' worked for ', mgr.last_name) "details"
> FROM employees emp
>          JOIN employees mgr
> WHERE emp.`manager_id` = mgr.employee_id;
> ```
>
> ![1696951903709](MySQL.assets/1696951903709.png)
>
> ```mysql
> SELECT CONCAT_WS('-', 'hello', 'world', 'hello', 'beijing')
> FROM DUAL;
> ```
>
> ![1696951940130](MySQL.assets/1696951940130.png)
>
> ```mysql
> #字符串的索引是从1开始的！
> SELECT INSERT('helloworld', 2, 3, 'aaaaa'), REPLACE('hello', 'lol', 'mmm')
> FROM DUAL;
> ```
>
> ![1696952019243](MySQL.assets/1696952019243.png)
>
> ```mysql
> SELECT UPPER('HelLo'), LOWER('HelLo')
> FROM DUAL;
> ```
>
> ![1696952078936](MySQL.assets/1696952078936.png)
>
> ```mysql
> SELECT last_name, salary
> FROM employees
> WHERE LOWER(last_name) = 'King';    #注mysql大小写不敏感，跟普通SQL有区别
> ```
>
> ![1696952173057](MySQL.assets/1696952173057.png)
>
> ```mysql
> SELECT LEFT('hello', 2), RIGHT('hello', 3), RIGHT('hello', 13)
> FROM DUAL;
> ```
>
> ![1696952217019](MySQL.assets/1696952217019.png)
>
> ```mysql
> # LPAD:实现右对齐效果
> # RPAD:实现左对齐效果
> SELECT employee_id, last_name, LPAD(salary, 10, ' ')
> FROM employees;
> ```
>
> ![1696952315936](MySQL.assets/1696952315936.png)
>
> ```mysql
> SELECT CONCAT('---', LTRIM('    h  el  lo   '), '***'),
>        TRIM('oo' FROM 'ooheollo')		#把oo当作空字符
> FROM DUAL;
> ```
>
> ![1696952387172](MySQL.assets/1696952387172.png)
>
> ```mysql
> SELECT REPEAT('hello', 4), LENGTH(SPACE(5)), STRCMP('abc', 'abe')
> FROM DUAL;
> ```
>
> ![1696952448242](MySQL.assets/1696952448242.png)
>
> ```mysql
> SELECT SUBSTR('hello', 2, 2), LOCATE('lll', 'hello')
> FROM DUAL;
> ```
>
> ![1696952490757](MySQL.assets/1696952490757.png)
>
> ```mysql
> SELECT ELT(2, 'a', 'b', 'c', 'd'),
>        FIELD('mm', 'gg', 'jj', 'mm', 'dd', 'mm'),
>        FIND_IN_SET('mm', 'gg,mm,jj,dd,mm,gg')
> FROM DUAL;
> ```
>
> ![1696952551537](MySQL.assets/1696952551537.png)
>
> ```mysql
> SELECT employee_id, NULLIF(LENGTH(first_name), LENGTH(last_name)) "compare"
> FROM employees;
> ```
>
> ![1696952599586](MySQL.assets/1696952599586.png)

> ```mysql
> # 15、查询书名达到10个字符的书，不包括里面的空格
> SELECT NAME
> FROM books
> WHERE CHAR_LENGTH(REPLACE(NAME, ' ', '')) >= 10;
> ```
>
> 

##### 日期和时间函数

###### 获取日期、时间

| **函数**                                                     | **用法**                       |
| ------------------------------------------------------------ | ------------------------------ |
| **CURDATE()**   ，CURRENT_DATE()                             | 返回当前日期，只包含年、月、日 |
| **CURTIME()** ， CURRENT_TIME()                              | 返回当前时间，只包含时、分、秒 |
| **NOW()** / SYSDATE() / CURRENT_TIMESTAMP() / LOCALTIME() / LOCALTIMESTAMP() | 返回当前系统日期和时间         |
| UTC_DATE()                                                   | 返回UTC（世界标准时间）日期    |
| UTC_TIME()                                                   | 返回UTC（世界标准时间）时间    |

```mysql
#3.1  获取日期、时间
SELECT CURDATE(),
       CURRENT_DATE(),
       CURTIME(),
       NOW(),
       SYSDATE(),
       UTC_DATE(),		#比咱少8小时
       UTC_TIME()
FROM DUAL;

```

![1696952817313](MySQL.assets/1696952817313.png)

```mysql
SELECT CURDATE(), CURDATE() + 0, CURTIME() + 0, NOW() + 0
FROM DUAL;
```

![1696952900104](MySQL.assets/1696952900104.png)

###### 日期与时间戳的转换

| **函数**                 | **用法**                                                     |
| ------------------------ | ------------------------------------------------------------ |
| UNIX_TIMESTAMP()         | 以UNIX时间戳的形式返回当前时间。SELECT UNIX_TIMESTAMP() -   >1634348884 |
| UNIX_TIMESTAMP(date)     | 将时间date以UNIX时间戳的形式返回。                           |
| FROM_UNIXTIME(timestamp) | 将UNIX时间戳的时间转换为普通格式的时间                       |

```mysql
#3.2 日期与时间戳的转换
SELECT UNIX_TIMESTAMP(),
       UNIX_TIMESTAMP('2021-10-01 12:12:32'),
       FROM_UNIXTIME(1635173853),
       FROM_UNIXTIME(1633061552)
FROM DUAL;
```

![1696953093101](MySQL.assets/1696953093101.png)

###### 获取月份、星期、星期数、天数等函数

| **函数**                                 | **用法**                                           |
| ---------------------------------------- | -------------------------------------------------- |
| YEAR(date) / MONTH(date) / DAY(date)     | 返回具体的日期值                                   |
| HOUR(time) / MINUTE(time) / SECOND(time) | 返回具体的时间值                                   |
| MONTHNAME(date)                          | 返回月份：January，...                             |
| DAYNAME(date)                            | 返回星期几：MONDAY，TUESDAY..... SUNDAY            |
| WEEKDAY(date)                            | 返回周几，注意，周1是0，周2是1，。。。周日是6      |
| QUARTER(date)                            | 返回日期对应的季度，范围为1～4                     |
| WEEK(date) ， WEEKOFYEAR(date)           | 返回一年中的第几周                                 |
| DAYOFYEAR(date)                          | 返回日期是一年中的第几天                           |
| DAYOFMONTH(date)                         | 返回日期位于所在月份的第几天                       |
| DAYOFWEEK(date)                          | 返回周几，注意：周日是1，周一是2，。。。周六是   7 |

```mysql
#3.3 获取月份、星期、星期数、天数等函数
SELECT YEAR(CURDATE()),
       MONTH(CURDATE()),
       DAY(CURDATE()),
       HOUR(CURTIME()),
       MINUTE(NOW()),
       SECOND(SYSDATE())
FROM DUAL;
```

![1696953280551](MySQL.assets/1696953280551.png)

```mysql
#字符串会隐式转换为日期类型
SELECT MONTHNAME('2021-10-26'),		#October
       DAYNAME('2021-10-26'),			#Tuesday
       WEEKDAY('2021-10-26'),			#1
       QUARTER(CURDATE()),			#4
       WEEK(CURDATE()),				#41
       DAYOFYEAR(NOW()),		#283
       DAYOFMONTH(NOW()),		#10
       DAYOFWEEK(NOW())			#3
FROM DUAL;
```

###### 日期的操作函数

| **函数**                | **用法**                                   |
| ----------------------- | ------------------------------------------ |
| EXTRACT(type FROM date) | 返回指定日期中特定的部分，type指定返回的值 |

EXTRACT(type FROM date)函数中type的取值与含义：

![1696953602506](MySQL.assets/1696953602506.png)
![1696953608492](MySQL.assets/1696953608492.png)

```mysql
#3.4 日期的操作函数
SELECT EXTRACT(SECOND FROM NOW()),
       EXTRACT(DAY FROM NOW()),
       EXTRACT(HOUR_MINUTE FROM NOW()),
       EXTRACT(QUARTER FROM '2021-05-12')
FROM DUAL;
```

![1696953681768](MySQL.assets/1696953681768.png)

###### 时间和秒钟转换的函数

| **函数**             | **用法**                                                     |
| -------------------- | ------------------------------------------------------------ |
| TIME_TO_SEC(time)    | 将 time 转化为秒并返回结果值。转化的公式为： `小时*3600+分钟*60+秒` |
| SEC_TO_TIME(seconds) | 将 seconds 描述转化为包含小时、分钟和秒的时间                |

```mysql
#3.5 时间和秒钟转换的函数
SELECT
       CURTIME(),
       TIME_TO_SEC(CURTIME()),
       SEC_TO_TIME(83355)
FROM DUAL;
```

![1696953995188](MySQL.assets/1696953995188.png)

###### 计算日期和时间的函数

==第一组==

| **函数**                                                     | **用法**                                       |
| ------------------------------------------------------------ | ---------------------------------------------- |
| DATE_ADD(datetime, INTERVAL expr type)， ADDDATE(date,INTERVAL expr type) | 返回与给定日期时间相差INTERVAL时间段的日期时间 |
| DATE_SUB(date,INTERVAL expr type)， SUBDATE(date,INTERVAL expr type) | 返回与date相差INTERVAL时间间隔的日期           |

上述函数中type的取值：

![1696954120337](MySQL.assets/1696954120337.png)

```mysql
#3.6 计算日期和时间的函数
SELECT NOW(),
       DATE_ADD(NOW(), INTERVAL 1 YEAR),
       DATE_ADD(NOW(), INTERVAL -1 YEAR),
       DATE_SUB(NOW(), INTERVAL 1 YEAR)
FROM DUAL;
```

![1696954254776](MySQL.assets/1696954254776.png)

==第二组==

| **函数**                     | **用法**                                                     |
| ---------------------------- | ------------------------------------------------------------ |
| ADDTIME(time1,time2)         | 返回time1加上time2的时间。当time2为一个数字时，代表的是   秒 ，可以为负数 |
| SUBTIME(time1,time2)         | 返回time1减去time2后的时间。当time2为一个数字时，代表的是 秒 ，可以为负数 |
| DATEDIFF(date1,date2)        | 返回date1 - date2的日期间隔天数                              |
| TIMEDIFF(time1, time2)       | 返回time1 - time2的时间间隔                                  |
| FROM_DAYS(N)                 | 返回从0000年1月1日起，N天以后的日期 <br />   可以看作时一个标准，用来算两个日期的差值 |
| TO_DAYS(date)                | 返回日期date距离0000年1月1日的天数                           |
| LAST_DAY(date)               | 返回date所在月份的最后一天的日期                             |
| MAKEDATE(year,n)             | 针对给定年份与所在年份中的天数返回一个日期                   |
| MAKETIME(hour,minute,second) | 将给定的小时、分钟和秒组合成时间并返回                       |
| PERIOD_ADD(time,n)           | 返回time加上n后的时间                                        |

```mysql
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY)                               AS col1,
       DATE_ADD('2021-10-21 23:32:12', INTERVAL 1 SECOND)            AS col2,
       ADDDATE('2021-10-21 23:32:12', INTERVAL 1 SECOND)             AS col3,
       DATE_ADD('2021-10-21 23:32:12', INTERVAL '1_1' MINUTE_SECOND) AS col4,
       DATE_ADD(NOW(), INTERVAL -1 YEAR)                             AS col5, #可以是负数
       DATE_ADD(NOW(), INTERVAL '1_1' YEAR_MONTH)                    AS col6  #需要单引号
FROM DUAL;
```

![1696954387146](MySQL.assets/1696954387146.png)

```mysql
SELECT NOW(),                                       #   2023-10-11 00:14:06
       ADDTIME(NOW(), 20),                          #   2023-10-11 00:14:26
       SUBTIME(NOW(), 30),                          #   2023-10-11 00:13:36
       SUBTIME(NOW(), '1:1:3'),                     #   2023-10-10 23:13:03
       DATEDIFF(NOW(), '2021-10-01'),               #   740
       TIMEDIFF(NOW(), '2021-10-25 22:10:10'),      #   838:59:59
       FROM_DAYS(366),                              #   0001-01-01
       TO_DAYS('0000-12-25'),                       #   366
       LAST_DAY(NOW()),                             #   2023-10-31
       MAKEDATE(YEAR(NOW()), 32),                   #   2023-02-01
       MAKETIME(10, 21, 23),                        #   10:21:23
       PERIOD_ADD(20200101010101, 10)               #   869817111
FROM DUAL;
```

###### 日期的格式化与解析

| **函数**                          | **用法**                                                     |
| --------------------------------- | ------------------------------------------------------------ |
| DATE_FORMAT(date,fmt)             | 按照字符串fmt格式化日期date值                                |
| TIME_FORMAT(time,fmt)             | 按照字符串fmt格式化时间time值                                |
| GET_FORMAT(date_type,format_type) | 返回日期字符串的显示格式 <br />    ==方便当作另外三个函数的参数== |
| STR_TO_DATE(str, fmt)             | 按照字符串fmt对str进行解析，解析为一个日期                   |

上述`非GET_FORMAT函数`中fmt参数常用的格式符：

| **格式符** | **说明**                                                     | 格式符    | **说明**                                                     |
| ---------- | ------------------------------------------------------------ | --------- | ------------------------------------------------------------ |
| %Y         | 4位数字表示年份                                              | %y        | 表示两位数字表示年份                                         |
| %M         | 月名表示月份（January,..... ）                               | %m        | 两位数字表示月份   （01,02,03。。。）                        |
| %b         | 缩写的月名（Jan.，Feb.，..... ）                             | %c        | 数字表示月份（1,2,3,...）                                    |
| %D         | 英文后缀表示月中的天数   （1st,2nd,3rd,...）                 | %d        | 两位数字表示月中的天数(01,02...)                             |
| %e         | 数字形式表示月中的天数   （1,2,3,4,5.....）                  |           |                                                              |
| %H         | 两位数字表示小数，24小时制   （01,02..）                     | %h和%I    | 两位数字表示小时，12小时制   （01,02..）                     |
| %k         | 数字形式的小时，24小时制(1,2,3)                              | %l        | 数字形式表示小时，12小时制   （1,2,3,4....）                 |
| %i         | 两位数字表示分钟（00,01,02）                                 | %S   和%s | 两位数字表示秒(00,01,02...)                                  |
| %W         | 一周中的星期名称（Sunday...）                                | %a        | 一周中的星期缩写（Sun.，   Mon.,Tues.，..）                  |
| %w         | 以数字表示周中的天数   (0=Sunday,1=Monday..... )             |           |                                                              |
| %j         | 以3位数字表示年中的天数(001,002...)                          | %U        | 以数字表示年中的第几周， （1,2,3。。）其中Sunday为周中第一天 |
| %u         | 以数字表示年中的第几周，   （1,2,3。。）其中Monday为周中第一天 |           |                                                              |
| %T         | 24小时制                                                     | %r        | 12小时制                                                     |
| %p         | AM或PM                                                       | %%        | 表示%                                                        |

`GET_FORMAT函数`中date_type和format_type参数取值如下：

![1696955407983](MySQL.assets/1696955407983.png)

> 格式化：日期 ---> 字符串
> 解析：  字符串 ----> 日期
>
> ```mysql
> #之前，我们接触过隐式的格式化或解析
> SELECT *
> FROM employees
> WHERE hire_date = '1993-01-13';
> ```
>
> ```mysql
> #格式化：
> SELECT DATE_FORMAT(CURDATE(), '%Y-%M-%D'),
>        DATE_FORMAT(NOW(), '%Y-%m-%d'),
>        TIME_FORMAT(CURTIME(), '%h:%i:%S'),
>        DATE_FORMAT(NOW(), '%Y-%M-%D %h:%i:%S %W %w %T %r')
> FROM DUAL;
> ```
>
> ![1696955307927](MySQL.assets/1696955307927.png)
>
> ![1696955315687](MySQL.assets/1696955315687.png)
>
> ```mysql
> #解析：格式化的逆过程
> SELECT STR_TO_DATE('2021-October-25th 11:37:30 Monday 1', '%Y-%M-%D %h:%i:%S %W %w')
> FROM DUAL;
> ```
>
> ![1696955348308](MySQL.assets/1696955348308.png)
>
> ```mysql
> SELECT GET_FORMAT(DATE, 'USA')
> FROM DUAL;
> ```
>
> ![1696955554675](MySQL.assets/1696955554675.png)
>
> ```mysql
> SELECT CURDATE(), DATE_FORMAT(CURDATE(), GET_FORMAT(DATE, 'USA'))
> FROM DUAL;
> ```
>
> ![1696955573946](MySQL.assets/1696955573946.png)
>
> 
>
> 练习
>
> ```mysql
> # 5.查询公司各员工工作的年数、工作的天数，并按工作年数的降序排序
> SELECT employee_id,
>        DATEDIFF(CURDATE(), hire_date) / 365    "worked_years",
>        DATEDIFF(CURDATE(), hire_date)          "worked_days",
>        TO_DAYS(CURDATE()) - TO_DAYS(hire_date) "worked_days1"
> FROM employees
> ORDER BY worked_years DESC;
> ```
>
> ![1696960470801](MySQL.assets/1696960470801.png)
>
> ```mysql
> # 6.查询员工姓名，hire_date , department_id，满足以下条件：
> #雇用时间在1997年之后，department_id 为80 或 90 或110, commission_pct不为空
> SELECT last_name, hire_date, department_id
> FROM employees
> WHERE department_id IN (80, 90, 110)
>   AND commission_pct IS NOT NULL
> #and hire_date >= '1997-01-01';  #存在着隐式转换
> #and  date_format(hire_date,'%Y-%m-%d') >= '1997-01-01';  # 显式转换操作，格式化：日期---> 字符串
> #and  date_format(hire_date,'%Y') >= '1997';   # 显式转换操作，格式化
>   AND hire_date >= STR_TO_DATE('1997-01-01', '%Y-%m-%d');# 显式转换操作，解析：字符串 ----> 日期
> ```
>
> 

##### 流程控制函数

| **函数**                                                     | **用法**                                        |
| ------------------------------------------------------------ | ----------------------------------------------- |
| IF(value,value1,value2)                                      | 如果value的值为TRUE，返回value1，否则返回value2 |
| IFNULL(value1, value2)                                       | 如果value1不为NULL，返回value1，否则返回value2  |
| CASE WHEN 条件1 THEN 结果1 WHEN 条件2 THEN 结果2   .... [ELSE resultn] END | 相当于Java的if...else if...else...              |
| CASE expr WHEN 常量值1   THEN 值1 WHEN 常量值1 THEN   值1..... [ELSE 值n] END | 相当于Java的switch...case...                    |

> ```mysql
> #4.1 IF(VALUE,VALUE1,VALUE2)
> SELECT last_name, salary, IF(salary >= 6000, '高工资', '低工资') "details"
> FROM employees;
> ```
>
> ![1696956148941](MySQL.assets/1696956148941.png)
>
> ```mysql
> SELECT last_name,
>        commission_pct,
>        IF(commission_pct IS NOT NULL, commission_pct, 0)                     "details",
>        salary * 12 * (1 + IF(commission_pct IS NOT NULL, commission_pct, 0)) "annual_sal"
> FROM employees;
> ```
>
> ![1696956235556](MySQL.assets/1696956235556.png)
>
> ```mysql
> 
> #4.2 IFNULL(VALUE1,VALUE2):看做是IF(VALUE,VALUE1,VALUE2)的特殊情况
> SELECT last_name, commission_pct, IFNULL(commission_pct, 0) "details"
> FROM employees;
> ```
>
> ![1696956272624](MySQL.assets/1696956272624.png)
>
> ```mysql
> #4.3 CASE WHEN ... THEN ...WHEN ... THEN ... ELSE ... END
> # 类似于java的if ... else if ... else if ... else
> SELECT last_name,
>        salary,
>        CASE
>            WHEN salary >= 15000 THEN '白骨精'
>            WHEN salary >= 10000 THEN '潜力股'
>            WHEN salary >= 8000 THEN '小屌丝'
>            ELSE '草根' END "details",
>        department_id
> FROM employees;
> ```
>
> ![1696956309078](MySQL.assets/1696956309078.png)
>
> ```mysql
> /*
> 练习2
> 查询部门号为 10,20, 30 的员工信息,
> 若部门号为 10, 则打印其工资的 1.1 倍,
> 20 号部门, 则打印其工资的 1.2 倍,
> 30 号部门打印其工资的 1.3 倍数
> */
> SELECT employee_id,
>        last_name,
>        department_id,
>        salary,
>        CASE department_id
>            WHEN 10 THEN salary * 1.1
>            WHEN 20 THEN salary * 1.2
>            WHEN 30 THEN salary * 1.3
>            END "details"
> FROM employees
> WHERE department_id IN (10, 20, 30);
> ```
>
> ![1696956398978](MySQL.assets/1696956398978.png)

##### 加密与解密的函数

| **函数**                    | **用法**                                                     |
| --------------------------- | ------------------------------------------------------------ |
| PASSWORD(str)               | 返回字符串str的加密版本，41位长的字符串。加密结果 不可逆   ，常用于用户的密码加密<br />   ==PASSWORD()在mysql8.0中弃用。== |
| MD5(str)                    | 返回字符串str的md5加密后的值，也是一种加密方式。若参数为   NULL，则会返回NULL |
| SHA(str)                    | 从原明文密码str计算并返回加密后的密码字符串，当参数为   NULL时，返回NULL。 SHA加密算法比MD5更加安全 。 |
| ENCODE(value,password_seed) | 返回使用password_seed作为加密密码加密value   ==在mysql8.0中弃用。== |
| DECODE(value,password_seed) | 返回使用password_seed作为加密密码解密value   ==在mysql8.0中弃用。== |

```mysql
# PASSWORD()在mysql8.0中弃用。
SELECT MD5('mysql'), SHA('mysql'), MD5(MD5('mysql'))
FROM DUAL;
```

![1696956720899](MySQL.assets/1696956720899.png)

```mysql
#ENCODE()\DECODE() 在mysql8.0中弃用。
SELECT ENCODE('zfp','mysql'),DECODE(ENCODE('zfp','mysql'),'mysql')
FROM DUAL;
```

![1696956813376](MySQL.assets/1696956813376.png)

##### MySQL信息函数

> MySQL中内置了一些可以查询MySQL信息的函数，这些函数主要用于帮助数据库开发或运维人员更好地对数据库进行维护工作。

| **函数**                                               | **用法**                                                    |
| ------------------------------------------------------ | ----------------------------------------------------------- |
| VERSION()                                              | 返回当前MySQL的版本号                                       |
| CONNECTION_ID()                                        | 返回当前MySQL服务器的连接数                                 |
| DATABASE()，SCHEMA()                                   | 返回MySQL命令行当前所在的数据库                             |
| USER()，CURRENT_USER()、SYSTEM_USER()， SESSION_USER() | 返回当前连接MySQL的用户名，返回结果格式为   “主机名@用户名” |
| CHARSET(value)                                         | 返回字符串value自变量的字符集                               |
| COLLATION(value)                                       | 返回字符串value的比较规则                                   |

```mysql
#6. MySQL信息函数
SELECT VERSION(),
       CONNECTION_ID(),
       DATABASE(),
       SCHEMA(),
       USER(),
       CURRENT_USER(),
       CHARSET('小米'),
       COLLATION('小米')
FROM DUAL;
```

![1696957041429](MySQL.assets/1696957041429.png)

##### 其他函数（字符集、ip等）

| **函数**                         | **用法**                                                     |
| -------------------------------- | ------------------------------------------------------------ |
| FORMAT(value,n)                  | 返回对数字value进行格式化后的结果数据。n表示 四舍五入 后保留到小数点后n位 |
| CONV(value,from,to)              | 将value的值进行不同进制之间的转换                            |
| INET_ATON(ipvalue)               | 将以点分隔的IP地址转化为一个数字                             |
| INET_NTOA(value)                 | 将数字形式的IP地址转化为以点分隔的IP地址                     |
| BENCHMARK(n,expr)                | 将表达式expr重复执行n次。用于测试MySQL处理expr表达式所耗费的时间 |
| CONVERT(value USING   char_code) | 将value所使用的字符编码修改为char_code                       |

> ```mysql
> #如果n的值小于或者等于0，则只保留整数部分
> SELECT FORMAT(123.125, 2), FORMAT(123.125, 0), FORMAT(123.125, -2)
> FROM DUAL;
> ```
>
> ![1696957166091](MySQL.assets/1696957166091.png)
>
> ```mysql
> SELECT CONV(16, 10, 2), CONV(8888, 10, 16), CONV(NULL, 10, 2)
> FROM DUAL;
> ```
>
> ![1696957186019](MySQL.assets/1696957186019.png)
>
> ```mysql
> #以“192.168.1.100”为例，计算方式为192乘以256的3次方，加上168乘以256的2次方，加上1乘以256，再加上100。
> SELECT INET_ATON('192.168.1.100'), INET_NTOA(3232235876)
> FROM DUAL;
> ```
>
> ![1696957268819](MySQL.assets/1696957268819.png)
>
> ```mysql
> #BENCHMARK()用于测试表达式的执行效率
> SELECT BENCHMARK(100000, MD5('mysql'))
> FROM DUAL;
> ```
>
> ![1696957328949](MySQL.assets/1696957328949.png)
>
> ```mysql
> # CONVERT():可以实现字符集的转换
> SELECT CHARSET('zfp'), CHARSET(CONVERT('zfp' USING 'gbk'))
> FROM DUAL;
> ```
>
> ![1696957388867](MySQL.assets/1696957388867.png)

#### 聚合函数（分组）

> `AVG / SUM `：只适用于数值类型的字段（或变量）
>
> `MAX / MIN` :适用于数值类型、字符串类型、日期时间类型的字段（或变量）
>
> `COUNT`：计算指定字段在查询结构中出现的个数（==不包含NULL值的==）
>
> ```mysql
> #1.1 AVG / SUM ：只适用于数值类型的字段（或变量）
> SELECT AVG(salary), SUM(salary), AVG(salary) * 107
> FROM employees;
> #如下的操作没有意义
> SELECT SUM(last_name), AVG(last_name), SUM(hire_date)
> FROM employees;
> ```
>
> ```mysql
> #1.2 MAX / MIN :适用于数值类型、字符串类型、日期时间类型的字段（或变量）
> SELECT MAX(salary), MIN(salary)
> FROM employees;
> 
> SELECT MAX(last_name), MIN(last_name), MAX(hire_date), MIN(hire_date)
> FROM employees;
> ```
>
> ```mysql
> #1.3 COUNT：
> #需求：查询公司中平均奖金率
> #错误的！
> SELECT AVG(commission_pct)
> FROM employees;
> 
> #正确的：
> SELECT SUM(commission_pct) / COUNT(IFNULL(commission_pct, 0)),
>        AVG(IFNULL(commission_pct, 0))
> FROM employees;
> ```
>
> > 如何需要统计表中的记录数，使用`COUNT(*)、COUNT(1)、COUNT(具体字段) `哪个效率更高呢？
> > 	如果使用的是MyISAM 存储引擎，则三者效率相同，都是O(1)
> > 	如果使用的是InnoDB 存储引擎，则三者效率：COUNT(*) = COUNT(1)> COUNT(字段)

GROUP BY（分组）

![1696958534372](MySQL.assets/1696958534372.png)

> 结论1：SELECT中出现的非组函数的字段必须声明在GROUP BY 中。
> 				反之，GROUP BY中声明的字段可以不出现在SELECT中。
>
> 结论2：当使用ROLLUP时，不能同时使用ORDER BY子句进行结果排序，即ROLLUP和ORDER BY是互相排斥的。

==ROLLUP==

> 说明：当使用ROLLUP时，不能同时使用ORDER BY子句进行结果排序，即ROLLUP和ORDER BY是互相排斥的。
>
> ```mysql
> #错误的：
> SELECT department_id,AVG(salary) avg_sal
> FROM employees
> GROUP BY department_id WITH ROLLUP
> ORDER BY avg_sal ASC;
> ```
>
>
> ```mysql
> # 18、统计每一种note的库存量，并合计总量
> SELECT IFNULL(note,'合计库存总量') AS note,SUM(num)
> FROM books
> GROUP BY note WITH ROLLUP;
> ```
>
> 

> ```mysql
> #ROLLUP
> SELECT department_id, AVG(salary)
> FROM employees
> GROUP BY department_id
> WITH ROLLUP;
> ```
>
> ![1696958895543](MySQL.assets/1696958895543.png)
>
> 

==HAVING==

> 要求1：如果过滤条件中使用了聚合函数，则必须使用HAVING来替换WHERE。否则，报错。
>
> 要求2：HAVING 必须声明在 GROUP BY 的后面
>
> ```mysql
> #错误的写法：
> SELECT department_id, MAX(salary)
> FROM employees
> WHERE MAX(salary) > 10000
> GROUP BY department_id;
> ```
>
> 要求3：开发中，我们使用HAVING的前提是SQL中使用了GROUP BY。

> ```mysql
> #练习：查询部门id为10,20,30,40这4个部门中最高工资比10000高的部门信息
> #方式1：推荐，执行效率高于方式2.
> SELECT department_id, MAX(salary)
> FROM employees
> WHERE department_id IN (10, 20, 30, 40)
> GROUP BY department_id
> HAVING MAX(salary) > 10000;
> 
> #方式2：
> SELECT department_id, MAX(salary)
> FROM employees
> GROUP BY department_id
> HAVING MAX(salary) > 10000
>    AND department_id IN (10, 20, 30, 40);
> ```
>
> >   WHERE 与 HAVING 的对比
> > 1. 从适用范围上来讲，HAVING的适用范围更广。
> > 2. 如果过滤条件中没有聚合函数：这种情况下，WHERE的执行效率要高于HAVING

### 完整SQL语法

> SQL语句的执行过程：
> FROM
> ON
> (LEFT/RIGNT  JOIN)
> WHERE
> GROUP BY
> HAVING
> SELECT
> DISTINCT
> ORDER BY
> LIMIT
>
> ![1696961089505](MySQL.assets/1696961089505.png)

```mysql
#sql92语法：
SELECT ....,....,....(存在聚合函数)
FROM ...,....,....
WHERE 多表的连接条件 AND 不包含聚合函数的过滤条件
GROUP BY ...,....
HAVING 包含聚合函数的过滤条件
ORDER BY ....,...(ASC / DESC )
LIMIT ...,....



#sql99语法：
SELECT ....,....,....(存在聚合函数)
FROM ... (LEFT / RIGHT)JOIN ....ON 多表的连接条件
(LEFT / RIGHT)JOIN ... ON ....
WHERE 不包含聚合函数的过滤条件
GROUP BY ...,....
HAVING 包含聚合函数的过滤条件
ORDER BY ....,...(ASC / DESC )
LIMIT ...,....


```



### 子查询

> 称谓的规范：外查询（或主查询）、内查询（或子查询）
>
> 注：
> 子查询要包含在括号内
> 建议 将子查询放在比较条件的右侧
>
> 子查询可以声明的位置有：
> ==除了GROUP BY 和 LIMIT之外都可以声明==
>
> `from`子查询，必须给表起别名
>
> 对于非相关子查询建议从内往外写。
> 对于相关子查询建议从外往内写。

> 子查询的分类
>
> 分类方式一：按内查询的结果返回一条还是多条记录，将子查询分为 单行子查询 、 多行子查询 。
>
> * 单行子查询
>
>   ![1697033114371](MySQL.assets/1697033114371.png)
>
> * 多行子查询
>
>   ![1697033126399](MySQL.assets/1697033126399.png)
>
> 分类方式二：按内查询是否被执行多次，将子查询划分为 `相关(或关联)子查询` 和 `不相关(或非关联)子查询 `。
>
> 子查询从数据表中查询了数据结果
>
> * 不相关(或非关联)子查询
>
>   如果这个数据结果只执行一次，然后这个数据结果作为主查询的条件进行执行，那么这样的子查询叫做不相关子查询。
>
> * 相关(或关联)子查询
>
>   如果子查询需要执行多次，即采用循环的方式，先从外部查询开始，每次都传入子查询进行查询，然后再将结果反馈给外部，这种嵌套的执行方式就称为相关子查询。

#### 单行子查询

![1697035195809](MySQL.assets/1697035195809.png)

| **操作符** | **含义**                   |
| ---------- | -------------------------- |
| =          | equal to                   |
| >          | greater than               |
| >=         | greater than or equal   to |
| <          | less than                  |
| <=         | less than or equal   to    |
| <>         | not equal to               |

> ```mysql
> #需求：谁的工资比Abel的高？		以下两种方式中，推荐自连接，因为自连接一般效率高
> #方式2：自连接
> SELECT e2.last_name, e2.salary
> FROM employees e1,
>      employees e2
> WHERE e2.`salary` > e1.`salary` #多表的连接条件
>   AND e1.last_name = 'Abel';
> 
> #方式3：子查询
> SELECT last_name, salary
> FROM employees
> WHERE salary > (
>     SELECT salary
>     FROM employees
>     WHERE last_name = 'Abel'
> );
> ```
>
>
> ```mysql
> #题目：查询工资大于149号员工工资的员工的信息
> SELECT employee_id, last_name, salary
> FROM employees
> WHERE salary > (
>     SELECT salary
>     FROM employees
>     WHERE employee_id = 149
> );
> 
> #题目：返回job_id与141号员工相同，salary比143号员工多的员工姓名，job_id和工资
> SELECT last_name, job_id, salary
> FROM employees
> WHERE job_id = (
>     SELECT job_id
>     FROM employees
>     WHERE employee_id = 141
> )
>   AND salary > (
>     SELECT salary
>     FROM employees
>     WHERE employee_id = 143
> );
> 
> 
> #题目：返回公司工资最少的员工的last_name,job_id和salary
> SELECT last_name, job_id, salary
> FROM employees
> WHERE salary = (
>     SELECT MIN(salary)
>     FROM employees
> );
> ```
>
> 
>
> ==特殊写法==
>
> ```mysql
> #题目：查询与141号员工的manager_id和department_id相同的其他员工的employee_id，manager_id，department_id。
> #方式1：
> SELECT employee_id, manager_id, department_id
> FROM employees
> WHERE manager_id = (
>     SELECT manager_id
>     FROM employees
>     WHERE employee_id = 141
> )
>   AND department_id = (
>     SELECT department_id
>     FROM employees
>     WHERE employee_id = 141
> )
>   AND employee_id <> 141;
> 
> #方式2：了解
> SELECT employee_id, manager_id, department_id
> FROM employees
> WHERE (manager_id, department_id) = (	#特殊写法
>     SELECT manager_id, department_id
>     FROM employees
>     WHERE employee_id = 141
> )
>   AND employee_id <> 141;
> ```
>
> ==HAVING、CASE WHEN THEN中的子查询==
>
> ```mysql
> #题目：查询最低工资大于110号部门最低工资的部门id和其最低工资
> 
> SELECT department_id, MIN(salary)
> FROM employees
> WHERE department_id IS NOT NULL
> GROUP BY department_id
> HAVING MIN(salary) > (
>     SELECT MIN(salary)
>     FROM employees
>     WHERE department_id = 110
> );
> 
> #题目：显式员工的employee_id,last_name和location。
> #其中，若员工department_id与location_id为1800的department_id相同，
> #则location为’Canada’，其余则为’USA’。
> SELECT employee_id,
>        last_name,
>        CASE department_id
>            WHEN (SELECT department_id FROM departments WHERE location_id = 1800) THEN 'Canada'
>            ELSE 'USA' END "location"
> FROM employees;
> ```

##### 问题

```mysql
#4.3 非法使用子查询
#错误：Subquery returns more than 1 row
SELECT employee_id, last_name
FROM employees
WHERE salary =
      (SELECT MIN(salary)   #子查询多于一行
       FROM employees
       GROUP BY department_id);
```



#### 多行子查询

| **操作符** | **含义**                                                     |
| ---------- | ------------------------------------------------------------ |
| IN         | 等于列表中的**任意一个**                                     |
| ANY        | 需要和单行比较操作符一起使用，和子查询返回的**某一个**值比较 |
| ALL        | 需要和单行比较操作符一起使用，和子查询返回的**所有**值比较   |
| SOME       | 实际上是ANY的别名，作用相同，一般常使用ANY                   |

![1697035178873](MySQL.assets/1697035178873.png)

> ```mysql
> #5.多行子查询
> #5.1 多行子查询的操作符： IN  ANY ALL SOME(同ANY)
> #5.2举例：
> # IN:
> SELECT employee_id, last_name
> FROM employees
> WHERE salary IN
>       (SELECT MIN(salary)
>        FROM employees
>        GROUP BY department_id);
> 
> # ANY / ALL:
> #题目：返回其它job_id中比job_id为‘IT_PROG’部门任一工资低的员工的员工号、
> #姓名、job_id 以及salary
> SELECT employee_id, last_name, job_id, salary
> FROM employees
> WHERE job_id <> 'IT_PROG'
>   AND salary < ANY (
>     SELECT salary
>     FROM employees
>     WHERE job_id = 'IT_PROG'
> );
> 
> #题目：返回其它job_id中比job_id为‘IT_PROG’部门所有工资低的员工的员工号、
> #姓名、job_id 以及salary
> SELECT employee_id, last_name, job_id, salary
> FROM employees
> WHERE job_id <> 'IT_PROG'
>   AND salary < ALL (
>     SELECT salary
>     FROM employees
>     WHERE job_id = 'IT_PROG'
> );
> 
> #题目：查询平均工资最低的部门id
> #MySQL中聚合函数是不能嵌套使用的。
> #方式1：
> SELECT department_id
> FROM employees
> GROUP BY department_id
> HAVING AVG(salary) = (
>     SELECT MIN(avg_sal)
>     FROM (
>              SELECT AVG(salary) avg_sal
>              FROM employees
>              GROUP BY department_id
>          ) t_dept_avg_sal
> );
> 
> #方式2：
> SELECT department_id
> FROM employees
> GROUP BY department_id
> HAVING AVG(salary) <= ALL (
>     SELECT AVG(salary) avg_sal
>     FROM employees
>     GROUP BY department_id
> );
> 
> 
> ```

##### 问题

null值问题

```mysql
#5.3 空值问题
SELECT last_name
FROM employees
WHERE employee_id NOT IN (  #子查询当中有数据，但是有null值
    SELECT manager_id   #一旦null值参与运算，就都是null了，没有数据了
    FROM employees
);
```

![1697035549238](MySQL.assets/1697035549238.png)

![1697035608648](MySQL.assets/1697035608648.png)

```mysql

#正确写法
SELECT last_name
FROM employees
WHERE employee_id NOT IN (  #子查询当中有数据，但是有null值
    SELECT manager_id   #一旦null值参与运算，就都是null了，没有数据了
    FROM employees
    WHERE manager_id IS NOT NULL
);
```

#### 相关子查询

> ==相关子查询按照一行接一行的顺序执行，主查询的每一行都执行一次子查询。==
>
> 主要特征：==子查询中使用主查询中的列==
>
> ![1697036322974](MySQL.assets/1697036322974.png)
>
> ![1697036341580](MySQL.assets/1697036341580.png)

```mysql
#回顾：查询员工中工资大于公司平均工资的员工的last_name,salary和其department_id
#6.1
SELECT last_name, salary, department_id
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

#题目：查询员工中工资大于本部门平均工资的员工的last_name,salary和其department_id
#方式1：使用相关子查询
SELECT last_name, salary, department_id
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE department_id = e1.`department_id`
);

#方式2：在FROM中声明子查询
SELECT e.last_name, e.salary, e.department_id
FROM employees e,
     (
         SELECT department_id, AVG(salary) avg_sal
         FROM employees
         GROUP BY department_id) t_dept_avg_sal
WHERE e.department_id = t_dept_avg_sal.department_id
  AND e.salary > t_dept_avg_sal.avg_sal;


#题目：查询员工的id,salary,按照department_name 排序
SELECT employee_id, salary
FROM employees e
ORDER BY (
             SELECT department_name
             FROM departments d
             WHERE e.`department_id` = d.`department_id`
         ) ASC;
         
         
#题目：若employees表中employee_id与job_history表中employee_id相同的数目不小于2，
#输出这些相同id的员工的employee_id,last_name和其job_id
SELECT employee_id, last_name, job_id
FROM employees e
WHERE 2 <= (
    SELECT COUNT(*)
    FROM job_history j
    WHERE e.`employee_id` = j.`employee_id`
);

```

```mysql
#9.查询平均工资最低的部门信息和该部门的平均工资（相关子查询）
#方式1：
SELECT d.*, (SELECT AVG(salary) FROM employees WHERE department_id = d.`department_id`) avg_sal
FROM departments d
WHERE department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) = (
        SELECT MIN(avg_sal)
        FROM (
                 SELECT AVG(salary) avg_sal
                 FROM employees
                 GROUP BY department_id
             ) t_dept_avg_sal
    )
);

#方式2：
SELECT d.*, (SELECT AVG(salary) FROM employees WHERE department_id = d.`department_id`) avg_sal
FROM departments d
WHERE department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) <= ALL (
        SELECT AVG(salary)
        FROM employees
        GROUP BY department_id
    )
);

#方式3： LIMIT
SELECT d.*, (SELECT AVG(salary) FROM employees WHERE department_id = d.`department_id`) avg_sal
FROM departments d
WHERE department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) = (
        SELECT AVG(salary) avg_sal
        FROM employees
        GROUP BY department_id
        ORDER BY avg_sal ASC
        LIMIT 1
    )
);

#方式4：
SELECT d.*, (SELECT AVG(salary) FROM employees WHERE department_id = d.`department_id`) avg_sal
FROM departments d,
     (
         SELECT department_id, AVG(salary) avg_sal
         FROM employees
         GROUP BY department_id
         ORDER BY avg_sal ASC
         LIMIT 0,1
     ) t_dept_avg_sal
WHERE d.`department_id` = t_dept_avg_sal.department_id
```



##### EXISTS 与 NOT EXISTS关键字

> 关联子查询通常也会和 EXISTS操作符一起来使用，用来检查在子查询中是否存在满足条件的行。
>
> * ==如果在子查询中不存在满足条件的行==
>   * 条件返回 FALSE
>   * 继续在子查询中查找
> * ==如果在子查询中存在满足条件的行==
>   * 不在子查询中继续查找
>   * 条件返回 TRUE
>
> NOT EXISTS关键字表示如果不存在某种条件，则返回TRUE，否则返回FALSE。

```mysql
#6.2 EXISTS 与 NOT EXISTS关键字
#题目：查询公司管理者的employee_id，last_name，job_id，department_id信息
#方式1：自连接
SELECT DISTINCT mgr.employee_id, mgr.last_name, mgr.job_id, mgr.department_id
FROM employees emp
         JOIN employees mgr
              ON emp.manager_id = mgr.employee_id;

#方式2：子查询
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE employee_id IN (
    SELECT DISTINCT manager_id
    FROM employees
);

#方式3：使用EXISTS
SELECT employee_id, last_name, job_id, department_id
FROM employees e1
WHERE EXISTS(
              SELECT *		#随便写什么都无所谓。主要作用是看要不要这条记录，和子查询的select关系不大。
              FROM employees e2
              WHERE e1.`employee_id` = e2.`manager_id`
          );

#题目：查询departments表中，不存在于employees表中的部门的department_id和department_name
#方式1：
SELECT d.department_id, d.department_name
FROM employees e
         RIGHT JOIN departments d
                    ON e.`department_id` = d.`department_id`
WHERE e.`department_id` IS NULL;

#方式2：
SELECT department_id, department_name
FROM departments d
WHERE NOT EXISTS(
        SELECT *
        FROM employees e
        WHERE d.`department_id` = e.`department_id`
    );
```

##### 应用一：相关更新

```mysql
#题目：在employees中增加一个department_name字段，数据为员工对应的部门名称
# 1）
ALTER TABLE employees ADD(department_name VARCHAR2(14));
# 2）
UPDATE employees e
SET department_name = (SELECT department_name
                       FROM departments d
                       WHERE e.department_id = d.department_id);

```

##### 应用二：相关删除

```mysql
#题目：删除表employees中，其与emp_history表皆有的数据
DELETE
FROM employees e
WHERE employee_id IN
      (SELECT employee_id
       FROM emp_history
       WHERE employee_id = e.employee_id);
```



### DDL(创建、管理表)

#### 标识符命名规则

* ==数据库名、表名不得超过30个字符，变量名限制为29个==
* 必须只能包含 A–Z, a–z, 0–9, _共63个字符
* 数据库名、表名、字段名等对象名中间不要包含空格
* 同一个MySQL软件中，数据库不能同名；同一个库中，表不能重名；同一个表中，字段不能重名
* 必须保证你的字段没有和保留字、数据库系统或常用方法冲突。如果坚持使用，请在SQL语句中使用`（着重号）引起来
* 保持字段名和类型的一致性：在命名字段并为其指定数据类型的时候一定要保证一致性，假如数据类型在一个表里是整数，那在另一个表里可就别变成字符型了

#### MySQL中的数据类型

| **类型**         | **类型举例**                                                 |
| ---------------- | ------------------------------------------------------------ |
| 整数类型         | TINYINT、SMALLINT、MEDIUMINT、**INT(****或****INTEGER)**、BIGINT |
| 浮点类型         | FLOAT、DOUBLE                                                |
| 定点数类型       | **DECIMAL**                                                  |
| 位类型           | BIT                                                          |
| 日期时间类型     | YEAR、TIME、**DATE**、DATETIME、TIMESTAMP                    |
| 文本字符串类型   | CHAR、**VARCHAR**、TINYTEXT、TEXT、MEDIUMTEXT、LONGTEXT      |
| 枚举类型         | ENUM                                                         |
| 集合类型         | SET                                                          |
| 二进制字符串类型 | BINARY、VARBINARY、TINYBLOB、BLOB、MEDIUMBLOB、LONGBLOB      |
| JSON类型         | JSON对象、JSON数组                                           |
| 空间数据类型     | 单值：GEOMETRY、POINT、LINESTRING、POLYGON；   集合：MULTIPOINT、MULTILINESTRING、MULTIPOLYGON、   GEOMETRYCOLLECTION |

**常用类型介绍**

> 注：
>
> 如`INT(7)`的意思是不够7位用0补足7位

| **数据类型**  | **描述**                                                     |
| ------------- | ------------------------------------------------------------ |
| INT           | 从-2^31到2^31-1的整型数据。存储大小为 4个字节                |
| CHAR(size)    | 定长字符数据。若未指定，默认为1个字符，最大长度255           |
| VARCHAR(size) | 可变长字符数据，根据字符串实际长度保存，**必须指定长度**     |
| FLOAT(M,D)    | 单精度，占用4个字节，M=整数位+小数位，D=小数位。 D<=M<=255,0<=D<=30，默认M+D<=6 |
| DOUBLE(M,D)   | 双精度，占用8个字节，D<=M<=255,0<=D<=30，默认M+D<=15         |
| DECIMAL(M,D)  | 高精度小数，占用M+2个字节，D<=M<=65，0<=D<=30，最大取值范围与DOUBLE相同。 |
| DATE          | 日期型数据，格式'YYYY-MM-DD'                                 |
| BLOB          | 二进制形式的长文本数据，最大可达4G                           |
| TEXT          | 长文本数据，最大可达4G                                       |



#### 创建和管理数据库

> 注意：DATABASE 不能改名。一些可视化工具可以改名，它是建新库，把所有表复制到新库，再删旧库完成的。

##### 创建数据库

```mysql
#方式1：
CREATE DATABASE mytest1;  # 创建的此数据库使用的是默认的字符集
#查看创建数据库的结构
SHOW CREATE DATABASE mytest1;

#方式2：显式了指名了要创建的数据库的字符集
CREATE DATABASE mytest2 CHARACTER SET 'gbk';


#方式3（推荐）：如果要创建的数据库已经存在，则创建不成功，但不会报错。
CREATE DATABASE IF NOT EXISTS mytest2 CHARACTER SET 'utf8';
```

##### 查看数据库

```mysql
#查看当前连接中的数据库都有哪些
SHOW DATABASES;

#切换数据库
USE zfpdb;

#查看当前数据库中保存的数据表
SHOW TABLES;

#查看当前使用的数据库
SELECT DATABASE() FROM DUAL;

#查看指定数据库下保存的数据表
SHOW TABLES FROM mysql;
```

##### 修改数据库

```mysql
#更改数据库字符集
SHOW CREATE DATABASE mytest2;

ALTER DATABASE mytest2 CHARACTER SET 'utf8';
```

##### 删除数据库

```mysql
#方式1：如果要删除的数据库存在，则删除成功。如果不存在，则报错
DROP DATABASE mytest1;

SHOW DATABASES;

#方式2：推荐。 如果要删除的数据库存在，则删除成功。如果不存在，则默默结束，不会报错。
DROP DATABASE IF EXISTS mytest1;
```

#### 管理表

##### 创建表

```mysql
#方式一：
CREATE TABLE IF NOT EXISTS myemp1
(                          #需要用户具备创建表的权限。
    id        INT,
    emp_name  VARCHAR(15), #使用VARCHAR来定义字符串，必须在使用VARCHAR时指明其长度。
    hire_date DATE
);
#查看表结构
DESC myemp1;
#查看创建表的语句结构
SHOW CREATE TABLE myemp1;
#如果创建表时没有指明使用的字符集，则默认使用表所在的数据库的字符集。
```

```mysql
#方式2：基于现有的表，同时导入数据
CREATE TABLE myemp2
AS
SELECT employee_id, last_name, salary
FROM employees;



#说明1：查询语句中字段的别名，可以作为新创建的表的字段的名称。
#说明2：此时的查询语句可以结构比较丰富，使用前面章节讲过的各种SELECT
CREATE TABLE myemp3
AS
SELECT e.employee_id emp_id, e.last_name lname, d.department_name
FROM employees e
         JOIN departments d
              ON e.department_id = d.department_id;
              
#练习1：创建一个表employees_copy，实现对employees表的复制，包括表数据
CREATE TABLE employees_copy
AS
SELECT *
FROM employees;

#练习2：创建一个表employees_blank，实现对employees表的复制，不包括表数据
CREATE TABLE employees_blank
AS
SELECT *
FROM employees
#where department_id > 10000;
WHERE 1 = 2; #
```





##### 展示表结构

```mysql
#查看表结构
DESC myemp1;
#查看创建表的语句结构
SHOW CREATE TABLE myemp1;
```



##### 修改表

###### 添加一个字段

```mysql
# 添加一个字段
ALTER TABLE myemp1
    ADD salary DOUBLE(10, 2); #默认添加到表中的最后一个字段的位置

ALTER TABLE myemp1
    ADD phone_number VARCHAR(20) FIRST;

ALTER TABLE myemp1
    ADD email VARCHAR(45) AFTER emp_name;
```

###### 修改一个字段

```mysql
# 3.2 修改一个字段：数据类型、长度、默认值（略）
ALTER TABLE myemp1
    MODIFY emp_name VARCHAR(25);

ALTER TABLE myemp1
    MODIFY emp_name VARCHAR(35) DEFAULT 'aaa';
```

###### 重命名一个字段

```mysql
ALTER TABLE myemp1
    CHANGE salary monthly_salary DOUBLE(10, 2);

ALTER TABLE myemp1
    CHANGE email my_email VARCHAR(50);
```

###### 删除一个字段

```mysql
ALTER TABLE myemp1
    DROP COLUMN my_email;
```

##### 重命名表

```mysql
#方式1：
RENAME TABLE myemp1
    TO myemp11;

#方式2：
ALTER TABLE myemp2
    RENAME TO myemp12;
```

##### 删除表

```mysql
#5. 删除表
#不光将表结构删除掉，同时表中的数据也删除掉，释放表空间
DROP TABLE IF EXISTS myemp2;
```

##### 清空表

```mysql
#清空表，表示清空表中的所有数据，但是表结构保留。
TRUNCATE TABLE employees_copy;
```

> 1. DCL 中 COMMIT 和 ROLLBACK
>     COMMIT:提交数据。一旦执行COMMIT，则数据就被永久的保存在了数据库中，==意味着数据不可以回滚==。
>     ROLLBACK:回滚数据。一旦执行ROLLBACK,则可以实现数据的回滚。==回滚到最近的一次COMMIT之后==。
>
> 2. 对比 TRUNCATE TABLE 和 DELETE FROM
>    相同点：都可以实现对表中所有数据的删除，同时保留表结构。
>     不同点：
>    TRUNCATE TABLE：一旦执行此操作，表数据全部清除。同时，数据是不可以回滚的。
>    DELETE FROM：一旦执行此操作，表数据可以全部清除（不带WHERE）。同时，数据是可以实现回滚的。
>
> 3. DDL 和 DML 的说明
>
>      ① DDL的操作==一旦执行，就不可回滚==。指令SET autocommit = FALSE对DDL操作失效。(因为在执行完DDL
>        操作之后，一定会执行一次COMMIT。而此COMMIT操作不受SET autocommit = FALSE影响的。)
>
>      ② DML的操作==默认情况，一旦执行，也是不可回滚的==。但是，如果在执行DML之前，执行了
>        SET autocommit = FALSE，则执行的DML操作就==可以实现回滚==。

> 注：尽量使用DELETE
>
> ​	TRUNCATE TABLE 比 DELETE 速度快，且使用的系统和事务日志资源少，但 TRUNCATE 无事务且不触发 TRIGGER，有可能造成事故，故不建议在开发代码中使用此语句。
> ​	说明：TRUNCATE TABLE 在功能上与不带 WHERE 子句的 DELETE 语句相同。



### DML(数据增删改)

> 小结：
>   ==DML操作默认情况下，执行完以后都会自动提交数据==。
>  如果希望执行完以后不自动提交数据，则需要使用 SET autocommit = FALSE.

#### 插入数据

##### VALUES方式

> `VALUES `也可以写成 `VALUE` ，但是`VALUES`是标准写法。
> 字符和日期型数据应包含在单引号中。

```mysql
# ① 没有指明添加的字段
#要写全全部字段
INSERT INTO emp1
VALUES (1,'Tom','2000-12-21',3400); #注意：一定要按照声明的字段的先后顺序添加

# ② 指明要添加的字段 （推荐）
INSERT INTO emp1(id,hire_date,salary,`name`)
VALUES(2,'1999-09-09',4000,'Jerry');
# 说明：没有进行赋值的hire_date 的值为 null
INSERT INTO emp1(id,salary,`name`)
VALUES(3,4500,'shk');

# ③ 同时插入多条记录 （推荐）
INSERT INTO emp1(id,NAME,salary)
VALUES
(4,'Jim',5000),
(5,'张俊杰',5500);
```

##### 将查询结果插入到表中

> 说明：
>  emp1表中要添加数据的字段的长度不能低于employees表中查询的字段的长度。
>  如果emp1表中要添加数据的字段的长度低于employees表中查询的字段的长度的话，就==有添加不成功的风险==。
>
> ==尽量字段类型保持你一致！！！！==

```mysql
INSERT INTO emp1(id, NAME, salary, hire_date)
#查询语句
SELECT employee_id, last_name, salary, hire_date # 查询的字段一定要与添加到的表的字段一一对应
FROM employees
WHERE department_id IN (70, 60);
```

#### 更新数据

```mysql
UPDATE emp1
SET hire_date = CURDATE()
WHERE id = 5;


#同时修改一条数据的多个字段
UPDATE emp1
SET hire_date = CURDATE(),
    salary    = 6000
WHERE id = 4;

#题目：将表中姓名中包含字符a的提薪20%
UPDATE emp1
SET salary = salary * 1.2
WHERE NAME LIKE '%a%';

#修改数据时，是可能存在不成功的情况的。（可能是由于约束的影响造成的）
UPDATE employees
SET department_id = 10000
WHERE employee_id = 102;
```

#### 删除数据

```mysql
#3. 删除数据 DELETE FROM .... WHERE....
DELETE FROM emp1
WHERE id = 1;

#在删除数据时，也有可能因为约束的影响，导致删除失败
DELETE FROM departments
WHERE department_id = 50;
```



## 数据类型

> 阿里开发手册
>
> 【 强制 】小数类型为 DECIMAL，禁止使用 FLOAT 和 DOUBLE。
> 【 强制 】如果存储的字符串长度几乎相等，使用 CHAR 定长字符串类型。
> 【 强制 】VARCHAR 是可变长字符串，不预先分配存储空间，长度不要超过 5000。如果存储长度大于此值，定义字段类型为 TEXT，独立出来一张表，用主键来对应，避免影响其它字段索引效率。

### MySQL中的数据类型

| **类型**         | **类型举例**                                                 |
| ---------------- | ------------------------------------------------------------ |
| 整数类型         | TINYINT、SMALLINT、MEDIUMINT、INT(或INTEGER)、BIGINT         |
| 浮点类型         | FLOAT、DOUBLE                                                |
| 定点数类型       | DECIMAL                                                      |
| 位类型           | BIT                                                          |
| 日期时间类型     | YEAR、TIME、DATE、DATETIME、TIMESTAMP                        |
| 文本字符串类型   | CHAR、VARCHAR、TINYTEXT、TEXT、MEDIUMTEXT、LONGTEXT          |
| 枚举类型         | ENUM                                                         |
| 集合类型         | SET                                                          |
| 二进制字符串类型 | BINARY、VARBINARY、TINYBLOB、BLOB、MEDIUMBLOB、LONGBLOB      |
| JSON类型         | JSON对象、JSON数组                                           |
| 空间数据类型     | 单值类型：GEOMETRY、POINT、LINESTRING、POLYGON；   集合类型：MULTIPOINT、MULTILINESTRING、MULTIPOLYGON、   GEOMETRYCOLLECTION |

常见数据类型的属性，如下：

| **MySQL关键字**    | **含义**                 |
| ------------------ | ------------------------ |
| NULL               | 数据列可包含NULL值       |
| NOT NULL           | 数据列不允许包含NULL值   |
| DEFAULT            | 默认值                   |
| PRIMARY KEY        | 主键                     |
| AUTO_INCREMENT     | 自动递增，适用于整数类型 |
| UNSIGNED           | 无符号                   |
| CHARACTER SET name | 指定一个字符集           |



### 字符集设置(建表时)

> ```mysql
> #1.关于属性：character set name
> 
> SHOW VARIABLES LIKE 'character_%';		#相关配置在my.ini中
> 
> #创建数据库时指名字符集
> CREATE DATABASE IF NOT EXISTS dbtest12 CHARACTER SET 'utf8';
> 
> SHOW CREATE DATABASE dbtest12;
> 
> #创建表的时候，指名表的字符集
> CREATE TABLE temp
> (
>     id INT
> ) CHARACTER SET 'utf8';
> 
> SHOW CREATE TABLE temp;
> 
> #创建表，指名表中的字段时，可以指定字段的字符集
> CREATE TABLE temp1
> (
>     id   INT,
>     NAME VARCHAR(15) CHARACTER SET 'gbk'
> 
> );
> SHOW CREATE TABLE temp1;
> ```
>
> 

### 整数类型

| **整数类型** | **字节** | **有符号数取值范围**                     | **无符号数取值范围**   |
| ------------ | -------- | ---------------------------------------- | ---------------------- |
| TINYINT      | 1        | -128~127                                 | 0~255                  |
| SMALLINT     | 2        | -32768~32767                             | 0~65535                |
| MEDIUMINT    | 3        | -8388608~8388607                         | 0~16777215             |
| INT、INTEGER | 4        | -2147483648~2147483647                   | 0~4294967295           |
| BIGINT       | 8        | -9223372036854775808~9223372036854775807 | 0~18446744073709551615 |

>
> 注意：==从MySQL 8.0.17开始，整数数据类型不推荐使用显示宽度属性==。
>
> 如`INT(5)`，我们不推荐这样写。
>
> ==显示宽度与类型可以存储的值范围无关==
>
> ```mysql
> #2.整型数据类型
> 
> USE dbtest12;
> 
> CREATE TABLE test_int1
> (
>     f1 TINYINT,
>     f2 SMALLINT,
>     f3 MEDIUMINT,
>     f4 INTEGER,
>     f5 BIGINT
> );
> 
> DESC test_int1;
> 
> INSERT INTO test_int1(f1)
> VALUES (12),
>        (-12),
>        (-128),
>        (127);
> 
> SELECT *
> FROM test_int1;
> 
> #Out of range value for column 'f1' at row 1
> INSERT INTO test_int1(f1)
> VALUES (128);
> 
> CREATE TABLE test_int2
> (
>     f1 INT,
>     f2 INT(5),		#仅仅这样写没意义，要配合ZEROFULL使用
>     f3 INT(5) ZEROFILL #① 显示宽度为5。当insert的值不足5位时，使用0填充。 ②当使用ZEROFILL时，自动会添加UNSIGNED
> 	#超过5位也没有关系，可以正常插入
> );
> 
> INSERT INTO test_int2(f1, f2)
> VALUES (123, 123),
>        (123456, 123456);
> 
> SELECT *
> FROM test_int2;
> 
> INSERT INTO test_int2(f3)
> VALUES (123),
>        (123456);
> 
> SHOW CREATE TABLE test_int2;
> 
> 
> CREATE TABLE test_int3
> (
>     f1 INT UNSIGNED		#无符号类型
> );
> 
> DESC test_int3;
> 
> INSERT INTO test_int3
> VALUES (2412321);
> 
> #Out of range value for column 'f1' at row 1
> INSERT INTO test_int3
> VALUES (4294967296);
> ```
>
> 



### 浮点类型

![1697213078017](MySQL.assets/1697213078017.png)

> ==由于表示的范围一样，不建议在浮点数上用unsigned==。
>
> `FLOAT(M,D)` 或 `DOUBLE(M,D)` 。这里，`M称为 精度` ，`D称为 标度` 。(M,D)中 M=整数位+小数位，D=小数位。 D<=M<=255，0<=D<=30。
>
> ==从MySQL 8.0.17开始，FLOAT(M,D) 和DOUBLE(M,D)用法在官方文档中已经明确不推荐使用==
>
> 浮点型FLOAT和DOUBLE的UNSIGNED也不推荐使用了
>
> ```mysql
> #3.浮点类型
> CREATE TABLE test_double1
> (
>     f1 FLOAT,
>     f2 FLOAT(5, 2),
>     f3 DOUBLE,
>     f4 DOUBLE(5, 2)
> );
> 
> DESC test_double1;
> 
> INSERT INTO test_double1(f1, f2)
> VALUES (123.45, 123.45);
> 
> SELECT *
> FROM test_double1;
> 
> INSERT INTO test_double1(f3, f4)
> VALUES (123.45, 123.456);	#123.45     123.46
> #存在四舍五入
> 
> #Out of range value for column 'f4' at row 1
> INSERT INTO test_double1(f3, f4)
> VALUES (123.45, 1234.456);
> 
> #Out of range value for column 'f4' at row 1
> INSERT INTO test_double1(f3, f4)
> VALUES (123.45, 999.995);
> 
> #测试FLOAT和DOUBLE的精度问题
> CREATE TABLE test_double2
> (
>     f1 DOUBLE
> );
> 
> INSERT INTO test_double2
> VALUES (0.47),
>        (0.44),
>        (0.19);
> 
> SELECT SUM(f1)
> FROM test_double2;
> 
> SELECT SUM(f1) = 1.1, 1.1 = 1.1		# 0              1
> FROM test_double2;
> ```
>
> 

### 定点数类型(DECIMAL)

| **数据类型**             | **字节数** | **含义**           |
| ------------------------ | ---------- | ------------------ |
| DECIMAL(M,D),DEC,NUMERIC | M+2字节    | 有效范围由M和D决定 |

> DECIMAL(M,D) 
>
> M被称为精度，D被称为标度。0<=M<=65，0<=D<=30，D<M
>
> ==DECIMAL(M,D)的最大取值范围与DOUBLE类型一样==
>
> ==定点数在MySQL内部是以字符串形式存储，保证了精度==
>
> 默认为DECIMAL(10,0)
>
> ```mysql
> #4. 定点数类型
> CREATE TABLE test_decimal1
> (
>     f1 DECIMAL,
>     f2 DECIMAL(5, 2)
> );
> 
> DESC test_decimal1;
> 
> INSERT INTO test_decimal1(f1)
> VALUES (123),   #123
>        (123.45);    #123
> 
> SELECT *
> FROM test_decimal1;
> 
> INSERT INTO test_decimal1(f2)
> VALUES (999.99);
> 
> INSERT INTO test_decimal1(f2)
> VALUES (67.567);    #67.57
> #存在四舍五入
> 
> #Out of range value for column 'f2' at row 1
> INSERT INTO test_decimal1(f2)
> VALUES (1267.567);
> 
> #Out of range value for column 'f2' at row 1
> INSERT INTO test_decimal1(f2)
> VALUES (999.995);
> 
> #演示DECIMAL替换DOUBLE，体现精度
> ALTER TABLE test_double2
>     MODIFY f1 DECIMAL(5, 2);
> 
> DESC test_double2;
> 
> SELECT SUM(f1)
> FROM test_double2;
> 
> SELECT SUM(f1) = 1.1, 1.1 = 1.1		#1     1
> FROM test_double2;
> ```
>
> 

### 位类型（BIT）

| **二进制字符串类型** | **长度** | **长度范围**   | **占用空间**        |
| -------------------- | -------- | -------------- | ------------------- |
| BIT(M)               | M        | 1 <=   M <= 64 | 约为(M + 7)/8个字节 |

> 默认M是1位
>
> (M)是表示二进制的位数，位数最小值为1，最大值为64
>
> SELECT展示表，结果是以十六进制展示
>
> ```mysql
> #5. 位类型：BIT
> CREATE TABLE test_bit1
> (
>     f1 BIT,
>     f2 BIT(5),
>     f3 BIT(64)
> );
> 
> DESC test_bit1;
> 
> INSERT INTO test_bit1(f1)
> VALUES (0),
>        (1);
> 
> SELECT *
> FROM test_bit1;
> 
> #Data too long for column 'f1' at row 1
> INSERT INTO test_bit1(f1)
> VALUES (2);
> 
> INSERT INTO test_bit1(f2)
> VALUES (31);
> 
> #Data too long for column 'f2' at row 1
> INSERT INTO test_bit1(f2)
> VALUES (32);
> 
> SELECT BIN(f1), BIN(f2), HEX(f1), HEX(f2)	#用二进制、十六进制展示
> FROM test_bit1;
> 
> #此时+0以后，可以以十进制的方式显示数据
> SELECT f1 + 0, f2 + 0
> FROM test_bit1;
> ```
>
> 

### 日期与时间类型

| **类型**  | **名称** | **字节** | **日期格式**        | **最小值**                | **最大值**               |
| --------- | -------- | -------- | ------------------- | ------------------------- | ------------------------ |
| YEAR      | 年       | 1        | YYYY或YY            | 1901                      | 2155                     |
| TIME      | 时间     | 3        | HH:MM:SS            | -838:59:59                | 838:59:59                |
| DATE      | 日期     | 3        | YYYY-MM-DD          | 1000-01-01                | 9999-12-03               |
| DATETIME  | 日期时间 | 8        | YYYY-MM-DD HH:MM:SS | 1000-01-01   00:00:00     | 9999-12-31   23:59:59    |
| TIMESTAMP | 日期时间 | 4        | YYYY-MM-DD HH:MM:SS | 1970-01-01   00:00:00 UTC | 2038-01-19   03:14:07UTC |

> 为什么时间类型 TIME 的取值范围不是 -23:59:59～23:59:59 呢？
> 	原因是 MySQL 设计的 TIME 类型，不光表示一天之内的时间，而且可以用来表示一个时间间隔，这个时间间隔可以超过 24 小时。

#### YEAR

> 只需要 1个字节 的存储空间
>
> 以4位字符串或数字格式表示YEAR类型，其格式为YYYY，最小值为1901，最大值为2155。
>
> 以2位字符串格式表示YEAR类型，最小值为00，最大值为99。
> 	当取值为01到69时，表示2001到2069；
> 	当取值为70到99时，表示1970到1999；
> 	当取值整数的0或00添加的话，那么是0000年；
> 	当取值是日期/字符串的'0'添加的话，是2000年。
>
> ==从MySQL5.5.27开始，2位格式的YEAR已经不推荐使用==。YEAR默认格式就是“YYYY”，没必要写成YEAR(4)，
> 从MySQL 8.0.19开始，不推荐使用指定显示宽度的YEAR(4)数据类型。
>
> ```mysql
> #6.1 YEAR类型
> CREATE TABLE test_year
> (
>     f1 YEAR,
>     f2 YEAR(4)
> );
> 
> DESC test_year;
> 
> INSERT INTO test_year(f1)
> VALUES ('2021'),
>        (2022);
> 
> SELECT *
> FROM test_year;
> 
> INSERT INTO test_year(f1)
> VALUES ('2155');
> 
> #Out of range value for column 'f1' at row 1
> INSERT INTO test_year(f1)
> VALUES ('2156');
> 
> INSERT INTO test_year(f1)
> VALUES ('69'),  #2069
>        ('70');  #1970
> 
> INSERT INTO test_year(f1)
> VALUES (0),     #0
>        ('00');  #2000
> ```
>
> 

#### DATE

> 需要 3个字节 的存储空间。
>
> 插入数据时可用的格式：
> 	以 YYYY-MM-DD 格式或者 YYYYMMDD 格式表示的字符串日期，其最小取值为1000-01-01，最大取值为9999-12-03。YYYYMMDD格式会被转化为YYYY-MM-DD格式。
> 	以 YY-MM-DD 格式或者 YYMMDD 格式表示的字符串日期，此格式中，年份为两位数值或字符串满足YEAR类型的格式条件为：当年份取值为00到69时，会被转化为2000到2069；当年份取值为70到99时，会被转化为1970到1999。
> 	使用 CURRENT_DATE() 或者 NOW() 函数，会插入当前系统的日期。
>
> ```mysql
> CREATE TABLE test_date1
> (
>     f1 DATE
> );
> 
> DESC test_date1;
> 
> INSERT INTO test_date1
> VALUES ('2020-10-01'),
>        ('20201001'),
>        (20201001);
> 
> INSERT INTO test_date1
> VALUES ('00-01-01'),
>        ('000101'),
>        ('69-10-01'),
>        ('691001'),
>        ('70-01-01'),
>        ('700101'),
>        ('99-01-01'),
>        ('990101');
> 
> INSERT INTO test_date1
> VALUES (000301), #2000-03-01
>        (690301), #2069-03-01
>        (700301), #1970-03-01
>        (990301); #1999-03-01       #存在隐式转换
> 
> INSERT INTO test_date1
> VALUES (CURDATE()),
>        (CURRENT_DATE()),
>        (NOW());
> 
> SELECT *
> FROM test_date1;
> ```
>
> 

#### TIME

> 需要 3个字节 的存储空间
>
> 插入数据时可以用的格式
> **（1）可以使用带有冒号的字符串。**
> 		比如' `D HH:MM:SS`' 、' `HH:MM:SS` '、' `HH:MM` '、' `D HH:MM `'、' `D HH `'或' `SS `'格式，都能被正确地插入TIME类型的字段中。其中D表示天，其最小值为0，最大值为34。如果使用带有D格式的字符串插入TIME类型的字段时，D会被转化为小时，计算格式为D*24+HH。当使用带有冒号并且不带D的字符串表示时间时，表示当天的时间，比如12:10表示12:10:00，而不是00:12:10。
> **（2）可以使用不带有冒号的字符串或者数字。**
> 		可以使用不带有冒号的字符串或者数字，格式为' `HHMMSS` '或者 `HHMMSS` 。如果插入一个不合法的字符串或者数字，MySQL在存储数据时，会将其自动转化为00:00:00进行存储。比如1210，MySQL会将最右边的两位解析成秒，表示00:12:10，而不是12:10:00。
> **（3）使用 CURRENT_TIME() 或者 NOW() ，会插入当前系统的时间。**
>
> 
>
> ```mysql
> #6.3 TIME类型
> CREATE TABLE test_time1
> (
>     f1 TIME
> );
> 
> DESC test_time1;
> 
> INSERT INTO test_time1
> VALUES ('2 12:30:29'),
>        ('12:35:29'),
>        ('12:40'),
>        ('2 12:40'),
>        ('1 05'),
>        ('45');
> 
> INSERT INTO test_time1
> VALUES ('123520'),
>        (124011),
>        (1210);
> 
> INSERT INTO test_time1
> VALUES (NOW()),
>        (CURRENT_TIME()),
>        (CURTIME());
> 
> SELECT *
> FROM test_time1;
> ```
>
> 

#### DATETIME

> 需要 8 个字节的存储空间
>
> 插入数据时可以用的格式
> （1）以 `YYYY-MM-DD HH:MM:SS` 格式或者 `YYYYMMDDHHMMSS` 格式的字符串插入DATETIME类型的字段时，最小值为1000-01-01 00:00:00，最大值为9999-12-03 23:59:59。
> 		以YYYYMMDDHHMMSS格式的数字插入DATETIME类型的字段时，会被转化为YYYY-MM-DDHH:MM:SS格式。
>
> （2）以 `YY-MM-DD HH:MM:SS` 格式或者 `YYMMDDHHMMSS` 格式的字符串插入DATETIME类型的字段时，两位数的年份规则符合YEAR类型的规则，00到69表示2000到2069；70到99表示1970到1999。
>
> （3）使用 CURRENT_TIME() 或者 NOW() ，会插入当前系统的时间。
>
> ```mysql
> #6.4 DATETIME类型
> CREATE TABLE test_datetime1
> (
>     dt DATETIME
> );
> 
> INSERT INTO test_datetime1
> VALUES ('2021-01-01 06:50:30'),
>        ('20210101065030');
> 
> INSERT INTO test_datetime1
> VALUES ('99-01-01 00:00:00'),
>        ('990101000000'),
>        ('20-01-01 00:00:00'),
>        ('200101000000');
> 
> INSERT INTO test_datetime1
> VALUES (20200101000000),
>        (200101000000),
>        (19990101000000),
>        (990101000000);
> 
> INSERT INTO test_datetime1
> VALUES (CURRENT_TIMESTAMP()),
>        (NOW()),
>        (SYSDATE());
> 
> SELECT *
> FROM test_datetime1;
> ```
>
> 

#### TIMESTAMP

> 需要4个字节的存储空间
>
> 只能存储“1970-01-01 00:00:01 UTC”到“2038-01-19 03:14:07 UTC”之间的时间。UTC表示世界统一时间。
>
> 注：UTC比咱的时间少八个小时。在插入的时候会自动转换为对应的UTC，显示的是又从UTC转换为咱的时区。
>
> ```mysql
> #6.5 TIMESTAMP类型
> CREATE TABLE test_timestamp1
> (
>     ts TIMESTAMP
> );
> 
> INSERT INTO test_timestamp1
> VALUES ('1999-01-01 03:04:50'),
>        ('19990101030405'),
>        ('99-01-01 03:04:05'),
>        ('990101030405');
> 
> INSERT INTO test_timestamp1
> VALUES ('2020@01@01@00@00@00'),
>        ('20@01@01@00@00@00');
> 
> INSERT INTO test_timestamp1
> VALUES (CURRENT_TIMESTAMP()),
>        (NOW());
> 
> #Incorrect datetime value
> INSERT INTO test_timestamp1
> VALUES ('2038-01-20 03:14:07');
> 
> SELECT *
> FROM test_timestamp1;
> ```
>
> 

#### DATETIME与TIMESTAMP的选择

> 尽量用 DATETIME 类型。因为这个数据类型包括了完整的日期和时间信息，取值范围也最大，使用起来比较方便。
>
> 此外，一般存注册时间、商品发布时间等，不建议使用DATETIME存储，而是使用 `时间戳 `，因为DATETIME虽然直观，但不便于计算。
>
> ```mysql
> mysql> SELECT UNIX_TIMESTAMP();
> ```
>
> 



### 文本字符串类型

![1697217746908](MySQL.assets/1697217746908.png)

#### CHAR与VARCHAR

| **字符串**(文本)**类型** | **特点** | **长度** | **长度范围**      | **占用的存储空间**    |
| ------------------------ | -------- | -------- | ----------------- | --------------------- |
| CHAR(M)                  | 固定长度 | M        | 0 <=   M <= 255   | M个字节               |
| VARCHAR(M)               | 可变长度 | M        | 0 <=   M <= 65535 | (实际长度 + 1) 个字节 |

##### CHAR

> CHAR(M)
>
> 默认是1个字符。
>
> 数据的实际长度比CHAR类型声明的长度小，则会在 右侧填充 空格以达到指定的长度。
>
> 当MySQL检索CHAR类型的数据时，CHAR类型的字段会去除尾部的空格。
>
> ```mysql
> #7.1 CHAR类型
> CREATE TABLE test_char1
> (
>     c1 CHAR,
>     c2 CHAR(5)
> );
> 
> DESC test_char1;
> 
> INSERT INTO test_char1(c1)
> VALUES ('a');
> 
> #Data too long for column 'c1' at row 1
> INSERT INTO test_char1(c1)
> VALUES ('ab');
> 
> INSERT INTO test_char1(c2)
> VALUES ('ab');
> 
> INSERT INTO test_char1(c2)
> VALUES ('hello');
> 
> INSERT INTO test_char1(c2)
> VALUES ('你');
> 
> INSERT INTO test_char1(c2)
> VALUES ('你好');
> 
> INSERT INTO test_char1(c2)
> VALUES ('你好啊小米');
> 
> #Data too long for column 'c2' at row 1
> INSERT INTO test_char1(c2)
> VALUES ('你好XI啊小米');
> 
> SELECT *
> FROM test_char1;
> 
> SELECT CONCAT(c2, '***')
> FROM test_char1;
> 
> INSERT INTO test_char1(c2)
> VALUES ('ab  ');	#存的时候会自动去除尾部的空字符串
> 
> SELECT CHAR_LENGTH(c2)
> FROM test_char1;
> ```
>
> 

##### VARCHAR

> VARCHAR(M) 定义时， 必须指定长度M，否则报错。
>
> VARCHAR类型的字段所占用的存储空间为字符串实际长度加1个字节。
>
> MySQL4.0版本以下，varchar(20)：指的是20字节
> MySQL5.0版本以上，varchar(20)：指的是20字符。
>
> 检索VARCHAR类型的字段数据时，会保留数据尾部的空格。
>
> ```mysql
> #7.2 VARCHAR类型
> CREATE TABLE test_varchar1
> (
>     NAME VARCHAR #错误
> );
> 
> 
> #Column length too big for column 'name' (max = 21845); use BLOB or TEXT instead
> CREATE TABLE test_varchar2
> (
>     NAME VARCHAR(65535)		#65535/一个字符所占的字节数
> );
> 
> CREATE TABLE test_varchar3
> (
>     NAME VARCHAR(5)
> );
> 
> INSERT INTO test_varchar3
> VALUES ('小米你'),
>        ('小米你好啊');
> 
> #Data too long for column 'NAME' at row 1
> INSERT INTO test_varchar3
> VALUES ('你好XI啊小米');
> ```
>
> 

> ​	InnoDB存储引擎，建议使用VARCHAR类型。因为对于InnoDB数据表，==内部的行存储格式并没有区分固定长度和可变长度列==（所有数据行都使用指向数据列值的头指针），而且**主要影响性能的因素是数据行使用的存储总量**，由于char平均占用的空间多于varchar，所以除了简短并且固定长度的，其他考虑varchar。这样节省空间，对磁盘I/O和数据存储总量比较好。

#### TEXT

| **文本字符串类**型 | **特点**           | **长度** | **长度范围**                          | **占用的存储空**间 |
| ------------------ | ------------------ | -------- | ------------------------------------- | ------------------ |
| TINYTEXT           | 小文本、可变长度   | L        | 0 <=   L <= 255                       | L + 2 个字节       |
| TEXT               | 文本、可变长度     | L        | 0 <=   L <= 65535                     | L   + 2 个字节     |
| MEDIUMTEXT         | 中等文本、可变长度 | L        | 0 <=   L <= 16777215                  | L + 3 个字节       |
| LONGTEXT           | 大文本、可变长度   | L        | 0 <= L<=   4294967295（相当于   4GB） | L + 4 个字节       |

> **由于实际存储的长度不确定，MySQL 不允许 TEXT 类型的字段做主键**。
> 遇到这种情况，你只能采用CHAR(M)，或者 
>
> text和blob类型的数据删除后容易导致 “空洞”，使得文件碎片比较多，所以频繁使用的表不建议包含TEXT类型字段，建议单独分出去，单独用一个表。
>
> ```mysql
> #7.3 TEXT类型
> CREATE TABLE test_text
> (
>     tx TEXT
> );
> 
> INSERT INTO test_text
> VALUES ('zfp   ');
> 
> SELECT CHAR_LENGTH(tx)
> FROM test_text;
> #6
> ```
>
> 

### ENUM类型

| **文本字符串类型** | **长度** | **长度范围**      | **占用的存储空间** |
| ------------------ | -------- | ----------------- | ------------------ |
| ENUM               | L        | 1 <=   L <= 65535 | 1或2个字节         |

> ENUM类型只允许从成员中选取单个值，不能一次选取多个值。
>
> 当ENUM类型包含1～255个成员时，需要1个字节的存储空间；
> 当ENUM类型包含256～65535个成员时，需要2个字节的存储空间。
> ENUM类型的成员个数的上限为65535个。
>
> ```mysql
> INSERT INTO test_enum
> VALUES ('春'),
>        ('秋');
> 
> SELECT *
> FROM test_enum;
> 
> #Data truncated for column 'season' at row 1
> INSERT INTO test_enum
> VALUES ('春,秋');
> #Data truncated for column 'season' at row 1
> INSERT INTO test_enum
> VALUES ('人');
> 
> INSERT INTO test_enum
> VALUES ('unknow');
> 
> #忽略大小写的
> INSERT INTO test_enum
> VALUES ('UNKNOW');
> 
> #可以使用索引进行枚举元素的调用
> INSERT INTO test_enum
> VALUES (1),
>        ('3');
> 
> # 没有限制非空的情况下，可以添加null值
> INSERT INTO test_enum
> VALUES (NULL);
> ```
>
> 

### SET类型

| **成员个数范围（**L**表示实际成员个数）** | **占用的存储空间** |
| ----------------------------------------- | ------------------ |
| 1 <= L <= 8                               | 1个字节            |
| 9 <= L <= 16                              | 2个字节            |
| 17 <= L <= 24                             | 3个字节            |
| 25 <= L <= 32                             | 4个字节            |
| 33 <= L <= 64                             | 8个字节            |

```mysql
#9. SET类型
CREATE TABLE test_set
(
    s SET ('A', 'B', 'C')
);

INSERT INTO test_set (s)
VALUES ('A'),
       ('A,B');

#插入重复的SET类型成员时，MySQL会自动删除重复的成员
INSERT INTO test_set (s)
VALUES ('A,B,C,A');

#向SET类型的字段插入SET成员中不存在的值时，MySQL会抛出错误。
INSERT INTO test_set (s)
VALUES ('A,B,C,D');

SELECT *
FROM test_set;


CREATE TABLE temp_mul
(
    gender ENUM ('男','女'),
    hobby  SET ('吃饭','睡觉','打豆豆','写代码')
);

INSERT INTO temp_mul
VALUES ('男', '睡觉,打豆豆');

SELECT *
FROM temp_mul;

#Data truncated for column 'gender' at row 1
INSERT INTO temp_mul
VALUES ('男,女', '睡觉,打豆豆');
```



### 二进制字符串类型

> MySQL中的二进制字符串类型主要存储一些二进制数据，比如可以存储图片、音频和视频等二进制数据。
>
> MySQL中支持的二进制字符串类型主要包括BINARY、VARBINARY、TINYBLOB、BLOB、MEDIUMBLOB  和LONGBLOB类型

#### BINARY与VARBINARY类型

| **二进制字符串类型** | **特点** | **值的长度**           | **占用空间** |
| -------------------- | -------- | ---------------------- | ------------ |
| BINARY(M)            | 固定长度 | M （0 <=   M <= 255）  | M个字节      |
| VARBINARY(M)         | 可变长度 | M（0 <= M   <= 65535） | M+1个字节    |

> BINARY (M)  如果未指定(M)，表示只能存储 1个字节
> 如果字段值不足(M)个字节，将在右边填充'\0'以补齐指定长度。
>
> VARBINARY类型 必须指定(M) ，否则报错。

#### BLOB类型

> BLOB是一个 二进制大对象 ，可以容纳可变数量的数据。
>
> ​	需要注意的是，在实际工作中，往往不会在MySQL数据库中使用BLOB类型存储大对象数据，通常会将图片、音频和视频文件存储到      ，并将图片、音频和视频的==访问路径存储到MySQL中==。

| **二进制字符串类型** | **值的长度** | **长度范围**                        | **占用空间** |
| -------------------- | ------------ | ----------------------------------- | ------------ |
| TINYBLOB             | L            | 0 <=   L <= 255                     | L + 1 个字节 |
| BLOB                 | L            | 0 <= L   <= 65535（相当于64KB）     | L + 2 个字节 |
| MEDIUMBLOB           | L            | 0 <= L <= 16777215 （相当于16MB）   | L + 3 个字节 |
| LONGBLOB             | L            | 0 <= L   <= 4294967295（相当于4GB） | L + 4 个字节 |

### JSON类型

```mysql
#11. JSON类型
CREATE TABLE test_json
(
    js json

);

INSERT INTO test_json (js)
VALUES ('{
  "name": "songhk",
  "age": 18,
  "address": {
    "province": "beijing",
    "city": "beijing"
  }
}');


SELECT *
FROM test_json;

SELECT js -> '$.name'             AS NAME,
       js -> '$.age'              AS age,
       js -> '$.address.province' AS province,
       js -> '$.address.city'     AS city
FROM test_json;
```



## 约束

### 约束概述

> SQL规范以约束的方式对表数据进行额外的条件限制。从以下四个方面考虑：
>
> 实体完整性（Entity Integrity） ：例如，同一个表中，不能存在两条完全相同无法区分的记录
> 域完整性（Domain Integrity） ：例如：年龄范围0-120，性别范围“男/女”
> 引用完整性（Referential Integrity） ：例如：员工所在部门，在部门表中要能找到这个部门
> 用户自定义完整性（User-defined Integrity） ：例如：用户名唯一、密码不能为空等，本部门经理的工资不得高于本部门职工的平均工资的5倍。

> 约束的分类
>
> 角度1：约束的字段的个数
> 单列约束 vs 多列约束
>
> 角度2：约束的作用范围
> 列级约束：将此约束声明在对应字段的后面
> 表级约束：在表中所有字段都声明完，在所有字段的后面声明的约束
>
> 角度3：约束的作用（或功能）
> ① not null (非空约束)
> ② unique  (唯一性约束)
> ③ primary key (主键约束)
> ④ foreign key (外键约束)
> ⑤ check (检查约束)
> ⑥ default (默认值约束)

#### 如何添加/删除约束

```mysql
CREATE TABLE时添加约束

ALTER TABLE 时增加约束、删除约束
```

#### 如何查看表中的约束

```mysql
SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'test1';
```

### 非空约束

> 默认，所有的类型的值都可以是NULL，包括INT、FLOAT等数据类型
> 非空约束只能出现在表对象的列上，只能某个列单独限定非空，不能组合非空

```mysql
#3. not null (非空约束)
#3.1 在CREATE TABLE时添加约束

CREATE TABLE test1
(
    id        INT         NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    email     VARCHAR(25),
    salary    DECIMAL(10, 2)

);

DESC test1;

INSERT INTO test1(id, last_name, email, salary)
VALUES (1, 'Tom', 'tom@126.com', 3400);

#错误：Column 'last_name' cannot be null
INSERT INTO test1(id, last_name, email, salary)
VALUES (2, NULL, 'tom1@126.com', 3400);

#错误：Column 'id' cannot be null
INSERT INTO test1(id, last_name, email, salary)
VALUES (NULL, 'Jerry', 'jerry@126.com', 3400);

INSERT INTO test1(id, email)
VALUES (2, 'abc@126.com');

UPDATE test1
SET last_name = NULL
WHERE id = 1;

UPDATE test1
SET email = 'tom@126.com'
WHERE id = 1;

#3.2 在ALTER TABLE时添加约束
SELECT *
FROM test1;

DESC test1;

ALTER TABLE test1
    MODIFY email VARCHAR(25) NOT NULL;

#3.3 在ALTER TABLE时删除约束
ALTER TABLE test1
    MODIFY email VARCHAR(25) NULL;
```

### 唯一性约束

> 用来限制某个字段/某列的值不能重复。
>
> 唯一约束可以是某一个列的值唯一，也可以多个列组合的值唯一。
> 唯一性约束允许列值为空。
> 在创建唯一约束的时候，如果不给唯一约束命名，就默认和列名相同。
> ==MySQL会给唯一约束的列上默认创建一个唯一索引==。

#### 创建约束添加数据

```mysql
#4. unique  (唯一性约束)

#4.1 在CREATE TABLE时添加约束
CREATE TABLE test2
(
    id        INT UNIQUE, #列级约束
    last_name VARCHAR(15),
    email     VARCHAR(25),
    salary    DECIMAL(10, 2),
#表级约束
    CONSTRAINT uk_test2_email UNIQUE (email)
);

DESC test2;


SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'test2';

#在创建唯一约束的时候，如果不给唯一约束命名，就默认和列名相同。

INSERT INTO test2(id, last_name, email, salary)
VALUES (1, 'Tom', 'tom@126.com', 4500);

#错误：Duplicate entry '1' for key 'test2.id'
INSERT INTO test2(id, last_name, email, salary)
VALUES (1, 'Tom1', 'tom1@126.com', 4600);

#错误：Duplicate entry 'tom@126.com' for key 'test2.uk_test2_email'
INSERT INTO test2(id, last_name, email, salary)
VALUES (2, 'Tom1', 'tom@126.com', 4600);

#可以向声明为unique的字段上添加null值。而且可以多次添加null
INSERT INTO test2(id, last_name, email, salary)
VALUES (2, 'Tom1', NULL, 4600);

INSERT INTO test2(id, last_name, email, salary)
VALUES (3, 'Tom2', NULL, 4600);

SELECT *
FROM test2;

#4.2 在ALTER TABLE时添加约束

DESC test2;

UPDATE test2
SET salary = 5000
WHERE id = 3;
#方式1：
ALTER TABLE test2
    ADD CONSTRAINT uk_test2_sal UNIQUE (salary);
#方式2：
ALTER TABLE test2
    MODIFY last_name VARCHAR(15) UNIQUE;

#4.3 复合的唯一性约束
CREATE TABLE USER
(
    id         INT,
    `name`     VARCHAR(15),
    `password` VARCHAR(25),

#表级约束
    CONSTRAINT uk_user_name_pwd UNIQUE (`name`, `password`)
);

INSERT INTO USER
VALUES (1, 'Tom', 'abc');
#可以成功的：
INSERT INTO USER
VALUES (1, 'Tom1', 'abc');

SELECT *
FROM USER;

#案例：复合的唯一性约束的案例
#学生表
CREATE TABLE student
(
    sid    INT,                 #学号
    sname  VARCHAR(20),         #姓名
    tel    CHAR(11) UNIQUE KEY, #电话
    cardid CHAR(18) UNIQUE KEY  #身份证号
);

#课程表
CREATE TABLE course
(
    cid   INT,        #课程编号
    cname VARCHAR(20) #课程名称
);

#选课表
CREATE TABLE student_course
(
    id    INT,
    sid   INT,            #学号
    cid   INT,            #课程编号
    score INT,
    UNIQUE KEY (sid, cid) #复合唯一
);
INSERT INTO student
VALUES (1, '张三', '13710011002', '101223199012015623');#成功
INSERT INTO student
VALUES (2, '李四', '13710011003', '101223199012015624');#成功
INSERT INTO course
VALUES (1001, 'Java'),
       (1002, 'MySQL');#成功

SELECT *
FROM student;

SELECT *
FROM course;

INSERT INTO student_course
VALUES (1, 1, 1001, 89),
       (2, 1, 1002, 90),
       (3, 2, 1001, 88),
       (4, 2, 1002, 56);#成功

SELECT *
FROM student_course;

#错误：Duplicate entry '2-1002' for key 'student_course.sid'
INSERT INTO student_course
VALUES (5, 2, 1002, 67);
```

#### 删除唯一约束

```mysql
#4.4 删除唯一性约束
-- 添加唯一性约束的列上也会自动创建唯一索引。
-- 删除唯一约束只能通过删除唯一索引的方式删除。
-- 删除时需要指定唯一索引名，唯一索引名就和唯一约束名一样。
-- 如果创建唯一约束时未指定名称，如果是单列，就默认和列名相同；如果是组合列，那么默认和()中排在第一个的列名相同。也可以自定义唯一性约束名。


SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'student_course';

SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'test2';

DESC test2;

#如何删除唯一性索引
ALTER TABLE test2
    DROP INDEX last_name;

ALTER TABLE test2
    DROP INDEX uk_test2_sal;
```



### PRIMARY KEY 约束

![1697292944626](MySQL.assets/1697292944626.png)

> * 主键约束相当于唯一约束+非空约束的组合
> * 一个表最多只能有一个主键约束
> * 主键约束对应着表中的一列或者多列（复合主键）
> * 如果是多列组合的复合主键约束，那么这些列都不允许为空值，并且组合的值不允许重复。
> * ==MySQL的主键名总是PRIMARY==，就算自己命名了主键约束名也没用。
> * 当创建主键约束时，系统默认会在所在的列或列组合上建立对应的主键索引（能够根据主键查询的，就根据主键查询，效率更高）。如果删除主键约束了，主键约束对应的索引就自动删除了。
> * 不要修改主键字段的值。因为主键是数据记录的唯一标识，如果修改了主键的值，就有可能会破坏数据的完整性。

#### 添加约束

##### 在CREATE TABLE时添加约束

```mysql
#5.1 在CREATE TABLE时添加约束

#一个表中最多只能有一个主键约束。

#错误：Multiple primary key defined
CREATE TABLE test3
(
    id        INT PRIMARY KEY, #列级约束
    last_name VARCHAR(15) PRIMARY KEY,
    salary    DECIMAL(10, 2),
    email     VARCHAR(25)
);

# 主键约束特征：非空且唯一，用于唯一的标识表中的一条记录。
CREATE TABLE test4
(
    id        INT PRIMARY KEY, #列级约束
    last_name VARCHAR(15),
    salary    DECIMAL(10, 2),
    email     VARCHAR(25)
);

#MySQL的主键名总是PRIMARY，就算自己命名了主键约束名也没用。
CREATE TABLE test5
(
    id        INT,
    last_name VARCHAR(15),
    salary    DECIMAL(10, 2),
    email     VARCHAR(25),
#表级约束
    CONSTRAINT pk_test5_id PRIMARY KEY (id) #没有必要起名字。
);

SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'test5';

INSERT INTO test4(id, last_name, salary, email)
VALUES (1, 'Tom', 4500, 'tom@126.com');

#错误：Duplicate entry '1' for key 'test4.PRIMARY'
INSERT INTO test4(id, last_name, salary, email)
VALUES (1, 'Tom', 4500, 'tom@126.com');

#错误：Column 'id' cannot be null
INSERT INTO test4(id, last_name, salary, email)
VALUES (NULL, 'Tom', 4500, 'tom@126.com');

SELECT *
FROM test4;


CREATE TABLE user1
(
    id       INT,
    NAME     VARCHAR(15),
    PASSWORD VARCHAR(25),

    PRIMARY KEY (NAME, PASSWORD)

);
#如果是多列组合的复合主键约束，那么这些列都不允许为空值，并且组合的值不允许重复。
INSERT INTO user1
VALUES (1, 'Tom', 'abc');

INSERT INTO user1
VALUES (1, 'Tom1', 'abc');
#错误：Column 'name' cannot be null
INSERT INTO user1
VALUES (1, NULL, 'abc');

SELECT *
FROM user1;
```

##### 在ALTER TABLE时添加约束

```mysql
#5.2 在ALTER TABLE时添加约束

CREATE TABLE test6
(
    id        INT,
    last_name VARCHAR(15),
    salary    DECIMAL(10, 2),
    email     VARCHAR(25)
);

DESC test6;

ALTER TABLE test6
    ADD PRIMARY KEY (id);
```

#### 删除主键约束

> 在实际开发中，不会去删除表中的主键约束！

```mysql
#5.3 如何删除主键约束 (在实际开发中，不会去删除表中的主键约束！)
ALTER TABLE test6
    DROP PRIMARY KEY;
```

### 自增列：AUTO_INCREMENT

> * 一个表最多只能有一个自增长列
> * 自增长列约束的列必须是键列（主键列，唯一键列）
> * 自增约束的列的数据类型必须是整数类型
> * 如果自增列指定了 0 和 null，会在当前最大值的基础上自增；如果自增列手动指定了具体值，直接赋值为具体值。
>
> MySQL 8.0新特性—自增变量的持久化
>
> *  在MySQL 5.7系统中，对于自增主键的分配规则，是由InnoDB数据字典内部一个==计数器==来决定的，而该计数器只在==内存中维护==，并不会持久化到磁盘中。当数据库重启时，该计数器会被初始化。
> * MySQL 8.0将自增主键的计数器持久化到==重做日志==中。每次计数器发生改变，都会将其写入重做日志中。如果数据库重启，InnoDB会根据重做日志中的信息来初始化计数器的内存值。
>
> 最明显的区别就是重启后，删除现在最大的id那行数据后，再没有再次插入的情况下，重启系统。
> mysql5.7会从现有表数据的最大id计数
> mysql8.0会从删之前的最大id计数

#### 添加约束

##### 在CREATE TABLE时添加

```mysql
# 6.1 在CREATE TABLE时添加
CREATE TABLE test7
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(15)
);
#开发中，一旦主键作用的字段上声明有AUTO_INCREMENT，则我们在添加数据时，就不要给主键
#对应的字段去赋值了。
INSERT INTO test7(last_name)
VALUES ('Tom');

SELECT *
FROM test7;

#当我们向主键（含AUTO_INCREMENT）的字段上添加0 或 null时，实际上会自动的往上添加指定的字段的数值
INSERT INTO test7(id, last_name)
VALUES (0, 'Tom');

INSERT INTO test7(id, last_name)
VALUES (NULL, 'Tom');

INSERT INTO test7(id, last_name)
VALUES (10, 'Tom');

INSERT INTO test7(id, last_name)
VALUES (-10, 'Tom');
```

##### 在ALTER TABLE时添加

```mysql
#6.2 在ALTER TABLE 时添加
CREATE TABLE test8
(
    id        INT PRIMARY KEY,
    last_name VARCHAR(15)
);

DESC test8;

ALTER TABLE test8
    MODIFY id INT AUTO_INCREMENT;
```

#### 删除约束

```mysql
#6.3 在ALTER TABLE 时删除

ALTER TABLE test8
    MODIFY id INT;
```



### FOREIGN KEY约束

> 阿里开发规范
>
> 【 强制 】==不得使用外键与级联，一切外键概念必须在应用层解决==。
> 说明：（概念解释）学生表中的 student_id 是主键，那么成绩表中的 student_id 则为外键。如果更新学生表中的 student_id，同时触发成绩表中的 student_id 更新，即为级联更新。外键与级联更新适用于 单机低并发 ，不适合 分布式 、 高并发集群 ；级联更新是强阻塞，存在数据库 更新风暴 的风险；外键影响数据库的 插入速度 。
>
> 注：==外键约束（FOREIGN KEY）不能任意选择存储殷勤==

![1697294969812](MySQL.assets/1697294969812.png)

#### 概念及特点

> 主表（父表）：被引用的表，被参考的表
> 从表（子表）：引用别人的表，参考别人的表
> 例如：员工表的员工所在部门这个字段的值要参考部门表：部门表是主表，员工表是从表。
> 例如：学生表、课程表、选课表：选课表的学生和课程要分别参考学生表和课程表，学生表和课程表是主表，选课表是从表。
>
> 特点：
> 从表的外键列，必须引用/参考主表的主键或唯一约束的列。
> 在创建外键约束时，如果不给外键约束命名，==默认名不是列名，而是自动产生一个外键名==，也可以指定外键约束名。
>
> 创建(CREATE)表时就指定外键约束的话，先创建主表，再创建从表。
> 删表时，先删从表（或先删除外键约束），再删除主表。
> 	当主表的记录被从表参照时，主表的记录将不允许删除，如果要删除数据，需要先删除从表中依赖该记录的数据，然后才可以删除主表的数据。
> 	一个表可以建立多个外键约束。
>
> ​	从表的外键列与主表被参照的列名字可以不相同，但是数据类型必须一样，逻辑意义一致。如果类型不一样，创建子表时，就会出现错误“ERROR 1005 (HY000): Can't createtable'database.tablename'(errno: 150)”。
>
> ​	==当创建外键约束时，系统默认会在所在的列上建立对应的普通索引==。但是索引名是外键的约束名。（根据外键查询效率很高）
>
> ​	==删除外键约束后，必须 手动 删除对应的索引==

#### 添加外键约束

##### 在CREATE TABLE时添加

```mysql
#7.1 在CREATE TABLE 时添加

#主表和从表；父表和子表

#①先创建主表
CREATE TABLE dept1
(
    dept_id   INT,
    dept_name VARCHAR(15)
);
#②再创建从表
CREATE TABLE emp1
(
    emp_id        INT PRIMARY KEY AUTO_INCREMENT,
    emp_name      VARCHAR(15),
    department_id INT,

#表级约束
    CONSTRAINT fk_emp1_dept_id FOREIGN KEY (department_id) REFERENCES dept1 (dept_id)

);

#上述操作报错，因为主表中的dept_id上没有主键约束或唯一性约束。
#③ 添加
ALTER TABLE dept1
    ADD PRIMARY KEY (dept_id);

DESC dept1;

#④ 再创建从表
CREATE TABLE emp1
(
    emp_id        INT PRIMARY KEY AUTO_INCREMENT,
    emp_name      VARCHAR(15),
    department_id INT,

#表级约束
    CONSTRAINT fk_emp1_dept_id FOREIGN KEY (department_id) REFERENCES dept1 (dept_id)

);

DESC emp1;


SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'emp1';
```

```mysql
#7.2 演示外键的效果
#添加失败
INSERT INTO emp1
VALUES (1001, 'Tom', 10);

#
INSERT INTO dept1
VALUES (10, 'IT');
#在主表dept1中添加了10号部门以后，我们就可以在从表中添加10号部门的员工
INSERT INTO emp1
VALUES (1001, 'Tom', 10);

#删除失败
DELETE
FROM dept1
WHERE dept_id = 10;

#更新失败
UPDATE dept1
SET dept_id = 20
WHERE dept_id = 10;
```

##### 在ALTER TABLE时添加外键约束

```mysql
#7.3 在ALTER TABLE时添加外键约束
CREATE TABLE dept2
(
    dept_id   INT PRIMARY KEY,
    dept_name VARCHAR(15)
);

CREATE TABLE emp2
(
    emp_id        INT PRIMARY KEY AUTO_INCREMENT,
    emp_name      VARCHAR(15),
    department_id INT
);

ALTER TABLE emp2
    ADD CONSTRAINT fk_emp2_dept_id FOREIGN KEY (department_id) REFERENCES dept2 (dept_id);

SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'emp2';
```

#### 约束等级

> * `Cascade方式` ：在父表上update/delete记录时，同步update/delete掉子表的匹配记录
> * `Set null`方式 ：在父表上update/delete记录时，将子表上匹配记录的列设为null，但是要注意子表的外键列不能为not null
> * `No action`方式 ：如果子表中有匹配的记录，则不允许对父表对应候选键进行update/delete操作
> * `Restrict方式` ：同no action， 都是立即检查外键约束
> * `Set default`方式 （在可视化工具SQLyog中可能显示空白）：父表有变更时，子表将外键列设置成一个默认的值，但Innodb不能识别。
>
> 对于外键约束，最好是采用: `ON UPDATE CASCADE ON DELETE RESTRICT`的方式。

```mysql
#演示：
# on update cascade on delete set null
CREATE TABLE dept
(
    did   INT PRIMARY KEY, #部门编号
    dname VARCHAR(50)      #部门名称
);

CREATE TABLE emp
(
    eid    INT PRIMARY KEY, #员工编号
    ename  VARCHAR(5),      #员工姓名
    deptid INT,             #员工所在的部门
    FOREIGN KEY (deptid) REFERENCES dept (did) ON UPDATE CASCADE ON DELETE SET NULL
    #把修改操作设置为级联修改等级，把删除操作设置为set null等级
);

INSERT INTO dept
VALUES (1001, '教学部');
INSERT INTO dept
VALUES (1002, '财务部');
INSERT INTO dept
VALUES (1003, '咨询部');


INSERT INTO emp
VALUES (1, '张三', 1001); #在添加这条记录时，要求部门表有1001部门
INSERT INTO emp
VALUES (2, '李四', 1001);
INSERT INTO emp
VALUES (3, '王五', 1002);


UPDATE dept
SET did = 1004
WHERE did = 1002;

DELETE
FROM dept
WHERE did = 1004;


SELECT *
FROM dept;

SELECT *
FROM emp;

#结论：对于外键约束，最好是采用: `ON UPDATE CASCADE ON DELETE RESTRICT` 的方式。
```

#### 删除外键约束

```mysql
#7.5 删除外键约束

#一个表中可以声明有多个外键约束
USE atguigudb;
SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'employees';

USE dbtest13;

SELECT *
FROM information_schema.table_constraints
WHERE table_name = 'emp1';

#删除外键约束

ALTER TABLE emp1
    DROP FOREIGN KEY fk_emp1_dept_id;

#再手动的删除外键约束对应的普通索引
SHOW INDEX FROM emp1;

ALTER TABLE emp1
    DROP INDEX fk_emp1_dept_id;
```



### CHECK约束

> 检查某个字段的值是否符号xx要求，一般指的是值的范围
>
> MySQL5.7不支持。
> 	MySQL5.7 可以使用check约束，但check约束对数据验证没有任何作用。添加数据时，没有任何错误或警告。
>
> MySQL 8.0中可以使用check约束了。

```mysql
#8. check 约束
# MySQL5.7 不支持CHECK约束，MySQL8.0支持CHECK约束。

CREATE TABLE test10
(
    id        INT,
    last_name VARCHAR(15),
    salary    DECIMAL(10, 2) CHECK (salary > 2000)
);

INSERT INTO test10
VALUES (1, 'Tom', 2500);

#添加失败
INSERT INTO test10
VALUES (2, 'Tom1', 1500);

SELECT *
FROM test10;
```

### DEFALUT约束

> 给某个字段/某列指定默认值，一旦设置默认值，在插入数据时，如果此字段没有显式赋值，则赋值为默认值。

#### 添加约束

##### 在CREATE TABLE添加约束

```mysql
#9.1 在CREATE TABLE添加约束
CREATE TABLE test11
(
    id        INT,
    last_name VARCHAR(15),
    salary    DECIMAL(10, 2) DEFAULT 2000
);

DESC test11;

INSERT INTO test11(id, last_name, salary)
VALUES (1, 'Tom', 3000);

INSERT INTO test11(id, last_name)
VALUES (2, 'Tom1');

SELECT *
FROM test11;
```

##### 在ALTER TABLE添加约束

```mysql
#9.2 在ALTER TABLE添加约束
CREATE TABLE test12
(
    id        INT,
    last_name VARCHAR(15),
    salary    DECIMAL(10, 2)
);

DESC test12;

ALTER TABLE test12
    MODIFY salary DECIMAL(8, 2) DEFAULT 2500;
```

#### 删除约束

```mysql
#9.3 在ALTER TABLE删除约束
ALTER TABLE test12
    MODIFY salary DECIMAL(8, 2);


SHOW CREATE TABLE test12;
```



## 视图

### 视图概述

![1697297974506](MySQL.assets/1697297974506.png)

> * 视图是一种 虚拟表 ，本身是==不具有数据==的，占用很少的内存空间。
>
> * 视图建立在已有表的基础上, 视图赖以建立的这些表称为`基表`。
>
>   ![1697298110879](MySQL.assets/1697298110879.png)
>
> * 视图的创建和删除只影响视图本身，不影响对应的基表。但是当对视图中的数据进行增加、删除和修改操作时，数据表中的数据会相应地发生变化，反之亦然。
>
> * 可以将视图理解为==存储起来的 SELECT 语句==

### 创建视图

#### 创建单表视图

```mysql
#2.1 针对于单表
#情况1：视图中的字段与基表的字段有对应关系
CREATE VIEW vu_emp1
AS
SELECT employee_id, last_name, salary
FROM emps;

SELECT *
FROM vu_emp1;

#确定视图中字段名的方式1：
CREATE VIEW vu_emp2
AS
SELECT employee_id emp_id, last_name lname, salary #查询语句中字段的别名会作为视图中字段的名称出现
FROM emps
WHERE salary > 8000;

#确定视图中字段名的方式2：
CREATE VIEW vu_emp3(emp_id, NAME, monthly_sal) #小括号内字段个数与SELECT中字段个数相同
AS
SELECT employee_id, last_name, salary
FROM emps
WHERE salary > 8000;

SELECT *
FROM vu_emp3;

#情况2：视图中的字段在基表中可能没有对应的字段
CREATE VIEW vu_emp_sal
AS
SELECT department_id, AVG(salary) avg_sal
FROM emps
WHERE department_id IS NOT NULL
GROUP BY department_id;

SELECT *
FROM vu_emp_sal;
```

#### 创建多表联合视图

```mysql
#2.2 针对于多表

CREATE VIEW vu_emp_dept
AS
SELECT e.employee_id, e.department_id, d.department_name
FROM emps e
         JOIN depts d
              ON e.`department_id` = d.`department_id`;

SELECT *
FROM vu_emp_dept;

#利用视图对数据进行格式化

CREATE VIEW vu_emp_dept1
AS
SELECT CONCAT(e.last_name, '(', d.department_name, ')') emp_info
FROM emps e
         JOIN depts d
              ON e.`department_id` = d.`department_id`;

SELECT *
FROM vu_emp_dept1;
```

#### 基于视图创建视图

> 注删除依赖视图会导致视图失效

```mysql
#2.3 基于视图创建视图

CREATE VIEW vu_emp4
AS
SELECT employee_id, last_name
FROM vu_emp1;

SELECT *
FROM vu_emp4;
```

### 查看视图

```mysql
#3. 查看视图
# 语法1：查看数据库的表对象、视图对象
SHOW TABLES;

#语法2：查看视图的结构
DESCRIBE vu_emp1;

#语法3：查看视图的属性信息
SHOW TABLE STATUS LIKE 'vu_emp1';

#语法4：查看视图的详细定义信息
SHOW CREATE VIEW vu_emp1;
```

### 更新视图的数据

#### 一般情况，可以更新视图的数据

```mysql
#4.1 一般情况，可以更新视图的数据
SELECT *
FROM vu_emp1;

SELECT employee_id, last_name, salary
FROM emps;
#更新视图的数据，会导致基表中数据的修改
UPDATE vu_emp1
SET salary = 20000
WHERE employee_id = 101;

#同理，更新表中的数据，也会导致视图中的数据的修改
UPDATE emps
SET salary = 10000
WHERE employee_id = 101;

#删除视图中的数据，也会导致表中的数据的删除
DELETE
FROM vu_emp1
WHERE employee_id = 101;

SELECT employee_id, last_name, salary
FROM emps
WHERE employee_id = 101;
```

#### 不能更新视图中的数据

```mysql
#情况2：视图中的字段在基表中可能没有对应的字段
CREATE VIEW vu_emp_sal
AS
SELECT department_id, AVG(salary) avg_sal
FROM emps
WHERE department_id IS NOT NULL
GROUP BY department_id;

SELECT *
FROM vu_emp_sal;

#更新失败
UPDATE vu_emp_sal
SET avg_sal = 5000
WHERE department_id = 30;

#删除失败
DELETE
FROM vu_emp_sal
WHERE department_id = 30;
```

### 修改视图

```mysql
#5. 修改视图

DESC vu_emp1;

#方式1
CREATE OR REPLACE VIEW vu_emp1
AS
SELECT employee_id, last_name, salary, email
FROM emps
WHERE salary > 7000;

#方式2
    ALTER VIEW vu_emp1
    AS
        SELECT employee_id, last_name, salary, email, hire_date
        FROM emps;
```

### 删除视图

```mysql
#6. 删除视图
SHOW TABLES;

DROP VIEW vu_emp4;

DROP VIEW IF EXISTS vu_emp2,vu_emp3;
```

> 视图可以达到访问限制的目的。也可以理解为视图具有 隔离性 。视图相当于在用户和实际的数据表之间加了一层虚拟表。

## 存储过程与函数

> 阿里开发规范：
>
> 【强制】禁止使用存储过程，存储过程难以调试和扩展，更没有移植性。
>
> 一些公司要求，一些不要求，还是学一下吧。

> 主要缺点：调试困难、可移植性差、不适合高并发的场景

### 创建和使用存储过程

> 存储过程就是就是一组经过`预先编译`的SQL语句的封装。
>
> 执行过程：存储过程预先存储在 MySQL 服务器上，需要执行的时候，客户端只需要向服务器端发出调用存储过程的命令，服务器端就可以把预先存储好的这一系列 SQL 语句全部执行。

#### 语法

```mysql
CREATE PROCEDURE 存储过程名(IN|OUT|INOUT 参数名 参数类型,...)
[characteristics ...]
BEGIN
	存储过程体
END
```

> `IN` ：当前参数为输入参数，也就是表示入参；	默认就是 `IN`
> `OUT `：当前参数为输出参数，也就是表示出参；
> `INOUT` ：当前参数既可以为输入参数，也可以为输出参数。
>
> 形参类型可以是 MySQL数据库中的任意类型。==类型尽量与要匹配的SQL语句一致==

> `characteristics` 表示创建存储过程时指定的对存储过程的约束条件，其取值信息如下：
>
> ```mysql
> LANGUAGE SQL
> | [NOT] DETERMINISTIC
> | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
> | SQL SECURITY { DEFINER | INVOKER }
> | COMMENT 'string'
> ```
>
> * `LANGUAGE SQL` ：说明存储过程执行体是由SQL语句组成的，当前系统支持的语言为SQL。
> * `[NOT] DETERMINISTIC` ：指明存储过程执行的结果是否确定。DETERMINISTIC表示结果是确定的。每次执行存储过程时，相同的输入会得到相同的输出。NOT DETERMINISTIC表示结果是不确定的，相同的输入可能得到不同的输出。如果没有指定任意一个值，==默认为`NOT DETERMINISTIC`==。
> * `{ CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA } `：指明子程序使用SQL语句的限制。
>   * CONTAINS SQL表示当前存储过程的子程序包含SQL语句，但是并不包含读写数据的SQL语句；
>   * NO SQL表示当前存储过程的子程序中不包含任何SQL语句；
>   * READS SQL DATA表示当前存储过程的子程序中包含读数据的SQL语句；
>   * MODIFIES SQL DATA表示当前存储过程的子程序中包含写数据的SQL语句。
>   * ==默认情况下，系统会指定为CONTAINS SQL==。
> * `SQL SECURITY { DEFINER | INVOKER } `：执行当前存储过程的权限，即指明哪些用户能够执行当前存储过程。
>   * DEFINER 表示只有当前存储过程的创建者或者定义者才能执行当前存储过程；
>   * INVOKER 表示拥有当前存储过程的访问权限的用户能够执行当前存储过程。
>   * 如果没有设置相关的值，则MySQL==默认指定值为DEFINER==。
> * `COMMENT 'string' `：注释信息，可以用来描述存储过程。

> 存储过程体中可以有多条 SQL 语句，如果仅仅一条SQL 语句，则可以省略 BEGIN 和 END
>
> ```mysql
> 1. BEGIN…END：BEGIN…END 中间包含了多个语句，每个语句都以（;）号为结束符。
> 2. DECLARE：DECLARE 用来声明变量，使用的位置在于 BEGIN…END 语句中间，而且需要在其他语句使用之前进行变量的声明。
> 3. SET：赋值语句，用于对变量进行赋值。
> 4. SELECT… INTO：把从数据表中查询的结果存放到变量中，也就是为变量赋值。
> ```

> 需要设置新的结束标记
>
> ```mysql
> DELIMITER 新的结束标记
> ```
>
> 因为MySQL默认的语句结束符号为分号‘;’。为了避免与存储过程中SQL语句结束符相冲突，需要使用DELIMITER改变存储过程的结束符。
>
> 比如：“DELIMITER //”语句的作用是将MySQL的结束符设置为//，并以“END //”结束存储过程。存储过程定义完毕之后再使用“DELIMITER ;”恢复默认结束符。DELIMITER也可以指定其他符号作为结束符。
>
> 当使用DELIMITER命令时，应该避免使用反斜杠（‘\’）字符，因为反斜线是MySQL的转义字符。
>
> ```mysql
> #实例
> DELIMITER $
> 
> CREATE PROCEDURE 存储过程名(IN|OUT|INOUT 参数名 参数类型,...)
> [characteristics ...]
> BEGIN
> 	sql语句1;
> 	sql语句2;
> 	
> END $
> ```

#### 调用语法

```mysql
CALL 存储过程名(实参列表)
```

> ```mysql
> #调用in模式的参数
> CALL sp1('值');		
> 
> #调用out模式的参数
> SET @name;
> CALL sp1(@name);
> SELECT @name;
> 
> #调用inout模式的参数
> SET @name=值;
> CALL sp1(@name);
> SELECT @name;
> ```

#### 示例

##### 无参数无返回值

```mysql
#类型1：无参数无返回值

#举例1：创建存储过程select_all_data()，查看 employees 表的所有数据

DELIMITER $		#用$表示SQL的结束语句

CREATE PROCEDURE select_all_data()
BEGIN
    SELECT * FROM employees;
END $

DELIMITER ;

#2. 存储过程的调用

CALL select_all_data();

#举例2：创建存储过程avg_employee_salary()，返回所有员工的平均工资

DELIMITER //

CREATE PROCEDURE avg_employee_salary()
BEGIN
    SELECT AVG(salary) FROM employees;

END //

DELIMITER ;

#调用
CALL avg_employee_salary();


#举例3：创建存储过程show_max_salary()，用来查看“emps”表的最高薪资值。

DELIMITER //

CREATE PROCEDURE show_max_salary()
BEGIN
    SELECT MAX(salary)
    FROM employees;
END //

DELIMITER ;

#调用
CALL show_max_salary();
```

##### 带 OUT

```mysql
#类型2：带 OUT
#举例4：创建存储过程show_min_salary()，查看“emps”表的最低薪资值。并将最低薪资
#通过OUT参数“ms”输出

DESC employees;

DELIMITER //

CREATE PROCEDURE show_min_salary(OUT ms DOUBLE)
BEGIN
    SELECT MIN(salary)
    INTO ms
    FROM employees;
END //

DELIMITER ;

#调用

CALL show_min_salary(@ms);

#查看变量值
SELECT @ms;
```

##### 带 IN

```mysql
#类型3：带 IN
#举例5：创建存储过程show_someone_salary()，查看“emps”表的某个员工的薪资，
#并用IN参数empname输入员工姓名。

DELIMITER //

CREATE PROCEDURE show_someone_salary(IN empname VARCHAR(20))
BEGIN
    SELECT salary
    FROM employees
    WHERE last_name = empname;
END //

DELIMITER ;

#调用方式1
CALL show_someone_salary('Abel');
#调用方式2
SET @empname := 'Abel';
CALL show_someone_salary(@empname);


SELECT *
FROM employees
WHERE last_name = 'Abel';
```

##### 带 IN 和 OUT

```mysql
#类型4：带 IN 和 OUT
#举例6：创建存储过程show_someone_salary2()，查看“emps”表的某个员工的薪资，
#并用IN参数empname输入员工姓名，用OUT参数empsalary输出员工薪资。

DELIMITER //

CREATE PROCEDURE show_someone_salary2(IN empname VARCHAR(20), OUT empsalary DECIMAL(10, 2))
BEGIN
    SELECT salary
    INTO empsalary
    FROM employees
    WHERE last_name = empname;
END //

DELIMITER ;

#调用
SET @empname = 'Abel';
CALL show_someone_salary2(@empname, @empsalary);

SELECT @empsalary;
```

##### 带 INOUT

```mysql
#类型5：带 INOUT
#举例7：创建存储过程show_mgr_name()，查询某个员工领导的姓名，并用INOUT参数“empname”输入员工姓名，
#输出领导的姓名。

DESC employees;

DELIMITER $

CREATE PROCEDURE show_mgr_name(INOUT empname VARCHAR(25))
BEGIN

    SELECT last_name
    INTO empname
    FROM employees
    WHERE employee_id = (
        SELECT manager_id
        FROM employees
        WHERE last_name = empname
    );

END $

DELIMITER ;

#调用
SET @empname := 'Abel';				#其中:表示  明确赋值符号的意思，这里写不写都行。
CALL show_mgr_name(@empname);

SELECT @empname;
```



### 存储函数的使用

> 存储函数，即MySQL定义函数。

#### 语法

```mysql
CREATE FUNCTION 函数名(参数名 参数类型,...)
RETURNS 返回值类型
[characteristics ...]
BEGIN
	函数体 #函数体中肯定有 RETURN 语句
	
END
```

> * 参数列表：FUNCTION中总是默认为IN参数。（注：不同的是PROCEDURE支持指定参数为IN、OUT或INOUT）
> * RETURNS type 语句表示函数返回数据的类型
>   * RETURNS子句只能对FUNCTION做指定，对函数而言这==是强制的==。它用来指定函数的返回类型，而且==函数体必须包含一个 RETURN value 语句==。
> * characteristic 创建函数时指定的对函数的约束。取值与创建存储过程时相同。
> * 函数体也可以用BEGIN…END来表示SQL代码的开始和结束。如果函数体只有一条语句，也可以省略BEGIN…END。
>
> ```mysql
> #存储函数的调用与普通函数并无多大区别。
> SELECT 函数名(实参列表)
> ```

> 注意：
>
> 若在创建存储函数中报错“ `you might want to use the less safe log_bin_trust_function_creators variable` ”，有两种处理方法：
>
> * 方式一：加上必要的函数特性“`[NOT] DETERMINISTIC`”和“`{CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA}`”
>
> * 方式二：
>
>   ```mysql
>   SET GLOBAL log_bin_trust_function_creators = 1;
>   ```

#### 对比存储函数和存储过程

> ​	此外，**存储函数可以放在查询语句中使用，存储过程不行**。反之，存储过程的功能更加强大，包括能够执行对表的操作（比如创建表，删除表等）和事务操作，这些功能是存储函数不具备的。

|          | **关键字** | **调用语法**     | **返回值**        | **应用场景**                     |
| -------- | ---------- | ---------------- | ----------------- | -------------------------------- |
| 存储过程 | PROCEDURE  | CALL 存储过程()  | 理解为有0个或多个 | 一般用于更新                     |
| 存储函数 | FUNCTION   | SELECT 函数   () | 只能是一个        | 一般用于查询结果为一个值并返回时 |

#### 示例

```mysql
# 举例1：创建存储函数，名称为email_by_name()，参数定义为空，
#该函数查询Abel的email，并返回，数据类型为字符串型。

DELIMITER //

CREATE FUNCTION email_by_name()
    RETURNS VARCHAR(25)
    DETERMINISTIC
    CONTAINS SQL
    READS SQL DATA
BEGIN
    RETURN (SELECT email FROM employees WHERE last_name = 'Abel');
END //

DELIMITER ;

#调用
SELECT email_by_name();

SELECT email, last_name
FROM employees
WHERE last_name = 'Abel';

#举例2：创建存储函数，名称为email_by_id()，参数传入emp_id，该函数查询emp_id的email，
#并返回，数据类型为字符串型。

#创建函数前执行此语句，保证函数的创建会成功
SET GLOBAL log_bin_trust_function_creators = 1;

#声明函数

DELIMITER //

CREATE FUNCTION email_by_id(emp_id INT)
    RETURNS VARCHAR(25)

BEGIN
    RETURN (SELECT email FROM employees WHERE employee_id = emp_id);

END //

DELIMITER ;


#调用
SELECT email_by_id(101);

SET @emp_id := 102;
SELECT email_by_id(@emp_id);


#举例3：创建存储函数count_by_id()，参数传入dept_id，该函数查询dept_id部门的
#员工人数，并返回，数据类型为整型。

DELIMITER //

CREATE FUNCTION count_by_id(dept_id INT)
    RETURNS INT

BEGIN
    RETURN (SELECT COUNT(*) FROM employees WHERE department_id = dept_id);

END //

DELIMITER ;

#调用
SET @dept_id := 50;
SELECT count_by_id(@dept_id);
```

### 存储过程和函数的查看、修改、删除

#### 查看

```mysql
#方式1. 使用SHOW CREATE语句查看存储过程和函数的创建信息

SHOW CREATE PROCEDURE show_mgr_name;

SHOW CREATE FUNCTION count_by_id;

#方式2. 使用SHOW STATUS语句查看存储过程和函数的状态信息

SHOW PROCEDURE STATUS;

SHOW PROCEDURE STATUS LIKE 'show_max_salary';

SHOW FUNCTION STATUS LIKE 'email_by_id';

#方式3.从information_schema.Routines表中查看存储过程和函数的信息

SELECT *
FROM information_schema.Routines
WHERE ROUTINE_NAME = 'email_by_id'
  AND ROUTINE_TYPE = 'FUNCTION';	#与平常不同的是FUNCTION必须大写，平常的话不会这么严谨

SELECT *
FROM information_schema.Routines
WHERE ROUTINE_NAME = 'show_min_salary'
  AND ROUTINE_TYPE = 'PROCEDURE';
```

#### 修改

> 此处的修改，只修改相关特性。并不能修改其功能。（注：要像修改，只能先删再创建。）

##### 语法

```mysql
ALTER {PROCEDURE | FUNCTION} 存储过程或函数的名 [characteristic ...]
```

> 其中，characteristic指定存储过程或函数的特性，其取值信息与创建存储过程、函数时的取值信息略有不同。
>
> ```mysql
> { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
> | SQL SECURITY { DEFINER | INVOKER }
> | COMMENT 'string'
> ```

> * `CONTAINS SQL` ，表示子程序==包含SQL语句，但不包含读或写数据的语句==。
> * `NO SQL` ，表示子程序中==不包含SQL语句==。
> * `READS SQL DATA` ，表示子程序中==包含读数据的语句==。
> * `MODIFIES SQL DATA` ，表示子程序中包含写数据的语句。

> * `SQL SECURITY { DEFINER | INVOKER }` ，指明谁有权限来执行。
>   * `DEFINER`，表示只有定义者自己才能够执行。
>   * `INVOKER` ，表示调用者可以执行。

> * `COMMENT 'string'`，表示注释信息。

##### 示例

```mysql
#4.存储过程、函数的修改
ALTER PROCEDURE show_max_salary
    SQL SECURITY INVOKER
    COMMENT '查询最高工资';
```

#### 删除

**语法**

```mysql
DROP {PROCEDURE | FUNCTION} [IF EXISTS] 存储过程或函数的名
```

**示例**

```mysql

DROP FUNCTION IF EXISTS count_by_id;

DROP PROCEDURE IF EXISTS show_min_salary;
```



## 变量、流程控制、游标

### 变量

> https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html 查看MySQL文档的系统变量。

![1697387906797](MySQL.assets/1697387906797.png)

> * 全局系统变量针对于所有会话（连接）有效，但==不能跨重启==
> * 会话系统变量仅针对于当前会话（连接）有效。会话期间，当前会话对某个会话系统变量值的修改，不会影响其他会话同一个会话系统变量的值。
>
> 会话1对某个全局系统变量值的修改会导致会话2中同一个全局系统变量值的修改。
>
> 注：MySQL8.0开始支持全局变量的持久化，语法如下：
>
> ```mysql
> SET PERSIST global max_connections = 1000;
> ```
>
> 

> 在MySQL中
>
> * 有些系统变量只能是全局的，例如 max_connections 用于限制服务器的最大连接数；
> * 有些系统变量作用域既可以是全局又可以是会话，例如 character_set_client 用于设置客户端的字符集；
> * 有些系统变量的作用域只能是当前会话，例如 pseudo_thread_id 用于标记当前会话的 MySQL 连接 ID。

#### 系统变量

> MySQL 中的系统变量以 两个“@” 开头，
>
> * 其中“@@global”仅用于标记全局系统变量。
> * “@@session”仅用于标记会话系统变量。
> * “@@”首先标记会话系统变量，如果会话系统变量不存在，则标记全局系统变量。

##### 查看系统变量

```mysql
#1.2 查看系统变量
#查询全局系统变量
SHOW GLOBAL VARIABLES;
#617
#查询会话系统变量
SHOW SESSION VARIABLES; #640

SHOW VARIABLES;
#默认查询的是会话系统变量

#查询部分系统变量
SHOW GLOBAL VARIABLES LIKE 'admin_%';

SHOW VARIABLES LIKE 'character_%';
```

##### 查看指定系统变量

```mysql
#1.3 查看指定系统变量

SELECT @@global.max_connections;
SELECT @@global.character_set_client;

#错误：
SELECT @@global.pseudo_thread_id;

#错误：
SELECT @@session.max_connections;

SELECT @@session.character_set_client;

SELECT @@session.pseudo_thread_id;

SELECT @@character_set_client;
#先查询会话系统变量，再查询全局系统变量
```

##### 修改系统变量的值

> 方式1：修改MySQL 配置文件 ，继而修改MySQL系统变量的值（该方法需要重启MySQL服务）
>
> 方式2：在MySQL服务运行期间，使用“set”命令重新设置系统变量的值
>
> 注：MySQL8.0开始支持全局变量的持久化，语法如下：
>
> ```mysql
> SET PERSIST global max_connections = 1000;
> ```
>
> 

```mysql
#1.4 修改系统变量的值
#全局系统变量：
#方式1：
SET @@global.max_connections = 161;
#方式2：
SET GLOBAL max_connections = 171;

#针对于当前的数据库实例是有效的，一旦重启mysql服务，就失效了。


#会话系统变量：
#方式1：
SET @@session.character_set_client = 'gbk';
#方式2：
SET SESSION character_set_client = 'gbk';

#针对于当前会话是有效的，一旦结束会话，重新建立起新的会话，就失效了。
```

#### 用户变量

> ① 用户变量 ： 会话用户变量 vs 局部变量
>
> ② 会话用户变量：使用"@"开头，作用域为当前会话。
>
> ③ 局部变量：只能使用在存储过程和存储函数中的。
>
> |              | 作用域              | 定义位置            | 语法                     |
> | ------------ | ------------------- | ------------------- | ------------------------ |
> | 会话用户变量 | 当前会话            | 会话的任何地方      | 加@符号，不用指定类型    |
> | 局部变量     | 定义它的BEGIN END中 | BEGIN END的第一句话 | 一般不用加@,需要指定类型 |
>
> 

##### 会话用户变量

```mysql

#① 变量的声明和赋值：
#方式1：“=”或“:=”
SET @用户变量 = 值;
SET @用户变量 := 值;

#方式2：“:=” 或 INTO关键字
SELECT @用户变量 := 表达式 [FROM 等子句];
SELECT 表达式 INTO @用户变量  [FROM 等子句];

#② 使用
SELECT @变量名
```

```mysql
#测试：
#方式1：
SET @m1 = 1;
SET @m2 := 2;
SET @sum := @m1 + @m2;

SELECT @sum;

#方式2：
SELECT @count := COUNT(*)
FROM employees;

SELECT @count;

SELECT AVG(salary)
INTO @avg_sal
FROM employees;

SELECT @avg_sal;
```

##### 局部变量

```mysql
/*
1、局部变量必须满足：
① 使用DECLARE声明
② 声明并使用在BEGIN ... END 中 （使用在存储过程、函数中）
③ DECLARE的方式声明的局部变量必须声明在BEGIN中的首行的位置。

2、声明格式：
DECLARE 变量名 类型 [default 值];  # 如果没有DEFAULT子句，初始值为NULL

3、赋值：
方式1：
SET 变量名=值;
SET 变量名:=值;

方式2：
SELECT 字段名或表达式 INTO 变量名 FROM 表;

4、使用
SELECT 局部变量名;
*/
```

```mysql
#举例：
DELIMITER //

CREATE PROCEDURE test_var()

BEGIN
    #1、声明局部变量
    DECLARE a INT DEFAULT 0;
    DECLARE b INT;
    #DECLARE a,b INT DEFAULT 0;
    DECLARE emp_name VARCHAR(25);

    #2、赋值
    SET a = 1;
    SET b := 2;

    SELECT last_name INTO emp_name FROM employees WHERE employee_id = 101;

    #3、使用
    SELECT a, b, emp_name;
END //

DELIMITER ;

#调用存储过程
CALL test_var();

#举例1：声明局部变量，并分别赋值为employees表中employee_id为102的last_name和salary

DELIMITER //

CREATE PROCEDURE test_pro()
BEGIN
    #声明
    DECLARE emp_name VARCHAR(25);
    DECLARE sal DOUBLE(10, 2) DEFAULT 0.0;
    #赋值
    SELECT last_name, salary
    INTO emp_name,sal
    FROM employees
    WHERE employee_id = 102;
    #使用
    SELECT emp_name, sal;

END //

DELIMITER ;

#调用存储过程

CALL test_pro();

SELECT last_name, salary
FROM employees
WHERE employee_id = 102;

#举例2：声明两个变量，求和并打印 （分别使用会话用户变量、局部变量的方式实现）

#方式1：使用会话用户变量
SET @v1 = 10;
SET @v2 := 20;
SET @result := @v1 + @v2;

#查看
SELECT @result;

#方式2：使用局部变量
DELIMITER //

CREATE PROCEDURE add_value()
BEGIN
    #声明
    DECLARE value1,value2,sum_val INT;

    #赋值
    SET value1 = 10;
    SET value2 := 100;

    SET sum_val = value1 + value2;
    #使用
    SELECT sum_val;
END //

DELIMITER ;

#调用存储过程
CALL add_value();

#举例3：创建存储过程“different_salary”查询某员工和他领导的薪资差距，并用IN参数emp_id接收员工id，
#用OUT参数dif_salary输出薪资差距结果。

DELIMITER //

CREATE PROCEDURE different_salary(IN emp_id INT, OUT dif_salary DOUBLE)
BEGIN
    #分析：查询出emp_id员工的工资;查询出emp_id员工的管理者的id;查询管理者id的工资;计算两个工资的差值

    #声明变量
    DECLARE emp_sal DOUBLE DEFAULT 0.0; #记录员工的工资
    DECLARE mgr_sal DOUBLE DEFAULT 0.0; #记录管理者的工资

    DECLARE mgr_id INT DEFAULT 0;
    #记录管理者的id


    #赋值
    SELECT salary INTO emp_sal FROM employees WHERE employee_id = emp_id;

    SELECT manager_id INTO mgr_id FROM employees WHERE employee_id = emp_id;
    SELECT salary INTO mgr_sal FROM employees WHERE employee_id = mgr_id;

    SET dif_salary = mgr_sal - emp_sal;

END //
DELIMITER ;

#调用存储过程
SET @emp_id := 103;
SET @dif_sal := 0;
CALL different_salary(@emp_id, @dif_sal);

SELECT @dif_sal;


SELECT *
FROM employees;
```



### 定义条件与处理程序

> `定义条件`：事先定义程序执行过程中可能遇到的问题。
>
> `处理程序`：定义了在遇到问题时应当采取的处理方式，并且==保证存储过程或函数在遇到警告或错误时能继续执行==。
>
> 定义条件和处理程序在存储过程、存储函数中都是支持的。

#### 错误演示

```mysql
#2.1 错误演示：

#错误代码： 1364
#Field 'email' doesn't have a default value
INSERT INTO employees(last_name)
VALUES ('Tom');

DESC employees;

#错误演示：
DELIMITER //

CREATE PROCEDURE UpdateDataNoCondition()
BEGIN
    SET @x = 1;
    UPDATE employees SET email = NULL WHERE last_name = 'Abel';
    SET @x = 2;
    UPDATE employees SET email = 'aabbel' WHERE last_name = 'Abel';
    SET @x = 3;
END //

DELIMITER ;

#调用存储过程
#错误代码： 1048
#Column 'email' cannot be null
CALL UpdateDataNoCondition();

SELECT @x;
```

#### 定义条件

> ​	定义条件就是给MySQL中的错误码命名，这有助于存储的程序代码更清晰。它将一个`错误名字`和`指定的错误条件`关联起来。这个名字可以随后被用在定义处理程序的`DECLARE HANDLER`语句中。

##### 语法

```mysql
DECLARE 错误名称 CONDITION FOR 错误码（或错误条件）
```

> 错误码的说明：
>
> * `MySQL_error_code` 和 `sqlstate_value`都可以表示MySQL的错误。
>   * MySQL_error_code是数值类型错误代码。
>   * sqlstate_value是长度为5的字符串类型错误代码。
>
> 例如：
> 在ERROR 1418 (HY000)中，1418是MySQL_error_code，'HY000'是sqlstate_value。
> 在ERROR 1142（42000）中，1142是MySQL_error_code，'42000'是sqlstate_value。

##### 示例

```mysql
#举例1：定义“Field_Not_Be_NULL”错误名与MySQL中违反非空约束的错误类型
#是“ERROR 1048 (23000)”对应。
#方式1：使用MySQL_error_code
DECLARE Field_Not_Be_NULL CONDITION FOR 1048;

#方式2：使用sqlstate_value
DECLARE Field_Not_Be_NULL CONDITION FOR SQLSTATE '23000';

#举例2：定义"ERROR 1148(42000)"错误，名称为command_not_allowed。
#方式1：使用MySQL_error_code
DECLARE command_not_allowed CONDITION FOR 1148;

#方式2：使用sqlstate_value
DECLARE command_not_allowed CONDITION FOR SQLSTATE '42000';
```

#### 定义处理程序

> 可以为SQL执行过程中发生的某种类型的错误，定义特殊的处理程序。

##### 语法

```mysql
DECLARE 处理方式 HANDLER FOR 错误类型 处理语句
```

> 处理方式：处理方式有3个取值：CONTINUE、EXIT、UNDO。
>
> * `CONTINUE` ：表示遇到错误不处理，继续执行。
> * `EXIT` ：表示遇到错误马上退出。
> * `UNDO` ：表示遇到错误后撤回之前的操作。==MySQL中暂时不支持这样的操作==。

> 错误类型：（即条件）可以有如下取值：
>
> * `SQLSTATE '字符串错误码'` ：表示长度为5的sqlstate_value类型的错误代码；
> * `MySQL_error_code` ：匹配数值类型错误代码；
> * `错误名称` ：表示DECLARE ... CONDITION定义的错误条件名称。
> * `SQLWARNING` ：匹配所有以01开头的SQLSTATE错误代码；
> * `NOT FOUND` ：匹配所有以02开头的SQLSTATE错误代码；
> * `SQLEXCEPTION` ：匹配所有没有被SQLWARNING或NOT FOUND捕获的SQLSTATE错误代码；

> 处理语句：如果出现上述条件之一，则采用对应的处理方式，并执行指定的处理语句。语句可以是像`SET 变量 = 值`这样的简单语句，也可以是使用`BEGIN ... END`编写的复合语句。

##### 示例

```mysql
#2.3 定义处理程序
#格式：DECLARE 处理方式 HANDLER FOR 错误类型 处理语句

#举例：
#方法1：捕获sqlstate_value
DECLARE CONTINUE
HANDLER FOR SQLSTATE '42S02' SET @info = 'NO_SUCH_TABLE';

#方法2：捕获mysql_error_value
DECLARE CONTINUE
HANDLER FOR 1146 SET @info = 'NO_SUCH_TABLE';

#方法3：先定义条件，再调用
DECLARE no_such_table CONDITION FOR 1146;
DECLARE CONTINUE
HANDLER FOR no_such_table SET @info = 'NO_SUCH_TABLE';

#方法4：使用SQLWARNING
DECLARE EXIT
HANDLER FOR SQLWARNING SET @info = 'ERROR';

#方法5：使用NOT FOUND
DECLARE EXIT
HANDLER FOR NOT FOUND SET @info = 'NO_SUCH_TABLE';

#方法6：使用SQLEXCEPTION
DECLARE EXIT
HANDLER FOR SQLEXCEPTION SET @info = 'ERROR';
```

#### 案例

```mysql
DROP PROCEDURE UpdateDataNoCondition;

#重新定义存储过程，体现错误的处理程序
DELIMITER //

CREATE PROCEDURE UpdateDataNoCondition()
BEGIN
    #声明处理程序
    #处理方式1：
    DECLARE CONTINUE HANDLER FOR 1048 SET @prc_value = -1;
    #处理方式2：
    #DECLARE CONTINUE HANDLER FOR sqlstate '23000' SET @prc_value = -1;

    SET @x = 1;
    UPDATE employees SET email = NULL WHERE last_name = 'Abel';
    SET @x = 2;
    UPDATE employees SET email = 'aabbel' WHERE last_name = 'Abel';
    SET @x = 3;
END //

DELIMITER ;

#调用存储过程：
CALL UpdateDataNoCondition();

#查看变量：
SELECT @x, @prc_value;

#2.5 再举一个例子：
#创建一个名称为“InsertDataWithCondition”的存储过程

#① 准备工作
CREATE TABLE departments
AS
SELECT *
FROM zfp.`departments`;

DESC departments;

ALTER TABLE departments
    ADD CONSTRAINT uk_dept_name UNIQUE (department_id);

#② 定义存储过程：
DELIMITER //

CREATE PROCEDURE InsertDataWithCondition()
BEGIN
    SET @x = 1;
    INSERT INTO departments(department_name) VALUES ('测试');
    SET @x = 2;
    INSERT INTO departments(department_name) VALUES ('测试');
    SET @x = 3;
END //

DELIMITER ;

#③ 调用
CALL InsertDataWithCondition();

SELECT @x;
#2

#④ 删除此存储过程
DROP PROCEDURE IF EXISTS InsertDataWithCondition;

#⑤ 重新定义存储过程（考虑到错误的处理程序）

DELIMITER //

CREATE PROCEDURE InsertDataWithCondition()
BEGIN

    #处理程序
    #方式1：
    #declare exit handler for 1062 set @pro_value = -1;
    #方式2：
    #declare exit handler for sqlstate '23000' set @pro_value = -1;
    #方式3：
    #定义条件
    DECLARE duplicate_entry CONDITION FOR 1062;
    DECLARE EXIT HANDLER FOR duplicate_entry SET @pro_value = -1;

    SET @x = 1;
    INSERT INTO departments(department_name) VALUES ('测试');
    SET @x = 2;
    INSERT INTO departments(department_name) VALUES ('测试');
    SET @x = 3;
END //

DELIMITER ;

#调用
CALL InsertDataWithCondition();

SELECT @x, @pro_value;	#2、 -1
```

### 流程控制

> * 条件判断语句 ：IF 语句和 CASE 语句
> * 循环语句 ：LOOP、WHILE 和 REPEAT 语句
> * 跳转语句 ：ITERATE 和 LEAVE 语句

#### 分支结构之 IF

##### 语法

```mysql
IF 表达式1 THEN 操作1
[ELSEIF 表达式2 THEN 操作2]……
[ELSE 操作N]
END IF
```

##### 示例

```mysql
#3.1 分支结构之 IF

#举例1

DELIMITER //

CREATE PROCEDURE test_if()

BEGIN
    #情况1：
    #声明局部变量
    #declare stu_name varchar(15);

    #if stu_name is null
    #	then select 'stu_name is null';
    #end if;

    #情况2：二选一
    #declare email varchar(25) default 'aaa';

    #if email is null
    #	then select 'email is null';
    #else
    #	select 'email is not null';
    #end if;

    #情况3：多选一
    DECLARE age INT DEFAULT 20;

    IF age > 40
    THEN
        SELECT '中老年';
    ELSEIF age > 18
    THEN
        SELECT '青壮年';
    ELSEIF age > 8
    THEN
        SELECT '青少年';
    ELSE
        SELECT '婴幼儿';
    END IF;


END //

DELIMITER ;

#调用
CALL test_if();

DROP PROCEDURE test_if;

#举例2：声明存储过程“update_salary_by_eid1”，定义IN参数emp_id，输入员工编号。
#判断该员工薪资如果低于8000元并且入职时间超过5年，就涨薪500元；否则就不变。

DELIMITER //

CREATE PROCEDURE update_salary_by_eid1(IN emp_id INT)
BEGIN
    #声明局部变量
    DECLARE emp_sal DOUBLE; #记录员工的工资
    DECLARE hire_year DOUBLE;
    #记录员工入职公司的年头


    #赋值
    SELECT salary INTO emp_sal FROM employees WHERE employee_id = emp_id;

    SELECT DATEDIFF(CURDATE(), hire_date) / 365 INTO hire_year FROM employees WHERE employee_id = emp_id;

    #判断
    IF emp_sal < 8000 AND hire_year >= 5
    THEN
        UPDATE employees SET salary = salary + 500 WHERE employee_id = emp_id;
    END IF;
END //

DELIMITER ;

#调用存储过程
CALL update_salary_by_eid1(104);

SELECT DATEDIFF(CURDATE(), hire_date) / 365, employee_id, salary
FROM employees
WHERE salary < 8000
  AND DATEDIFF(CURDATE(), hire_date) / 365 >= 5;

DROP PROCEDURE update_salary_by_eid1;


#举例3：声明存储过程“update_salary_by_eid2”，定义IN参数emp_id，输入员工编号。
#判断该员工薪资如果低于9000元并且入职时间超过5年，就涨薪500元；否则就涨薪100元。

DELIMITER //

CREATE PROCEDURE update_salary_by_eid2(IN emp_id INT)
BEGIN
    #声明局部变量
    DECLARE emp_sal DOUBLE; #记录员工的工资
    DECLARE hire_year DOUBLE;
    #记录员工入职公司的年头


    #赋值
    SELECT salary INTO emp_sal FROM employees WHERE employee_id = emp_id;

    SELECT DATEDIFF(CURDATE(), hire_date) / 365 INTO hire_year FROM employees WHERE employee_id = emp_id;

    #判断
    IF emp_sal < 9000 AND hire_year >= 5
    THEN
        UPDATE employees SET salary = salary + 500 WHERE employee_id = emp_id;
    ELSE
        UPDATE employees SET salary = salary + 100 WHERE employee_id = emp_id;
    END IF;
END //

DELIMITER ;

#调用
CALL update_salary_by_eid2(103);
CALL update_salary_by_eid2(104);

SELECT *
FROM employees
WHERE employee_id IN (103, 104);


#举例4：声明存储过程“update_salary_by_eid3”，定义IN参数emp_id，输入员工编号。
#判断该员工薪资如果低于9000元，就更新薪资为9000元；薪资如果大于等于9000元且
#低于10000的，但是奖金比例为NULL的，就更新奖金比例为0.01；其他的涨薪100元。

DELIMITER //
CREATE PROCEDURE update_salary_by_eid3(IN emp_id INT)
BEGIN
    #声明变量
    DECLARE emp_sal DOUBLE; #记录员工工资
    DECLARE bonus DOUBLE;
    #记录员工的奖金率

    #赋值
    SELECT salary INTO emp_sal FROM employees WHERE employee_id = emp_id;
    SELECT commission_pct INTO bonus FROM employees WHERE employee_id = emp_id;


    #判断
    IF emp_sal < 9000
    THEN
        UPDATE employees SET salary = 9000 WHERE employee_id = emp_id;
    ELSEIF emp_sal < 10000 AND bonus IS NULL
    THEN
        UPDATE employees SET commission_pct = 0.01 WHERE employee_id = emp_id;
    ELSE
        UPDATE employees SET salary = salary + 100 WHERE employee_id = emp_id;
    END IF;

END //


DELIMITER ;

#调用
CALL update_salary_by_eid3(102);
CALL update_salary_by_eid3(103);
CALL update_salary_by_eid3(104);

SELECT *
FROM employees
WHERE employee_id IN (102, 103, 104);
```

#### 分支结构之 CASE

##### 语法结构

```mysql
#情况一：类似于switch
CASE 表达式
WHEN 值1 THEN 结果1或语句1(如果是语句，需要加分号)
WHEN 值2 THEN 结果2或语句2(如果是语句，需要加分号)
...
ELSE 结果n或语句n(如果是语句，需要加分号)
END [case]（如果是放在begin end中需要加上case，如果放在select后面不需要）



#情况二：类似于多重if
CASE
WHEN 条件1 THEN 结果1或语句1(如果是语句，需要加分号)
WHEN 条件2 THEN 结果2或语句2(如果是语句，需要加分号)
...
ELSE 结果n或语句n(如果是语句，需要加分号)
END [case]（如果是放在begin end中需要加上case，如果放在select后面不需要）
```

##### 示例

```mysql
##3.2 分支结构之case

#举例1:基本使用
DELIMITER //
CREATE PROCEDURE test_case()
BEGIN
    #演示1：case ... when ...then ...
    /*
    declare var int default 2;

    case var
        when 1 then select 'var = 1';
        when 2 then select 'var = 2';
        when 3 then select 'var = 3';
        else select 'other value';
    end case;
    */
    #演示2：case when ... then ....
    DECLARE var1 INT DEFAULT 10;
    CASE
        WHEN var1 >= 100 THEN SELECT '三位数';
        WHEN var1 >= 10 THEN SELECT '两位数';
        ELSE SELECT '个数位';
        END CASE;

END //

DELIMITER ;

#调用
CALL test_case();

DROP PROCEDURE test_case;

#举例2：声明存储过程“update_salary_by_eid4”，定义IN参数emp_id，输入员工编号。
#判断该员工薪资如果低于9000元，就更新薪资为9000元；薪资大于等于9000元且低于10000的，
#但是奖金比例为NULL的，就更新奖金比例为0.01；其他的涨薪100元。

DELIMITER //
CREATE PROCEDURE update_salary_by_eid4(IN emp_id INT)
BEGIN
    #局部变量的声明
    DECLARE emp_sal DOUBLE; #记录员工的工资
    DECLARE bonus DOUBLE;
    #记录员工的奖金率

    #局部变量的赋值
    SELECT salary INTO emp_sal FROM employees WHERE employee_id = emp_id;
    SELECT commission_pct INTO bonus FROM employees WHERE employee_id = emp_id;

    CASE
        WHEN emp_sal < 9000 THEN UPDATE employees SET salary = 9000 WHERE employee_id = emp_id;
        WHEN emp_sal < 10000 AND bonus IS NULL THEN UPDATE employees
                                                    SET commission_pct = 0.01
                                                    WHERE employee_id = emp_id;
        ELSE UPDATE employees SET salary = salary + 100 WHERE employee_id = emp_id;
        END CASE;


END //

DELIMITER ;

#调用
CALL update_salary_by_eid4(103);
CALL update_salary_by_eid4(104);
CALL update_salary_by_eid4(105);

SELECT *
FROM employees
WHERE employee_id IN (103, 104, 105);

#举例3：声明存储过程update_salary_by_eid5，定义IN参数emp_id，输入员工编号。
#判断该员工的入职年限，如果是0年，薪资涨50；如果是1年，薪资涨100；
#如果是2年，薪资涨200；如果是3年，薪资涨300；如果是4年，薪资涨400；其他的涨薪500。

DELIMITER //

CREATE PROCEDURE update_salary_by_eid5(IN emp_id INT)
BEGIN
    #声明局部变量
    DECLARE hire_year INT;
    #记录员工入职公司的总时间（单位：年）

    #赋值
    SELECT ROUND(DATEDIFF(CURDATE(), hire_date) / 365)
    INTO hire_year
    FROM employees
    WHERE employee_id = emp_id;

    #判断
    CASE hire_year
        WHEN 0 THEN UPDATE employees SET salary = salary + 50 WHERE employee_id = emp_id;
        WHEN 1 THEN UPDATE employees SET salary = salary + 100 WHERE employee_id = emp_id;
        WHEN 2 THEN UPDATE employees SET salary = salary + 200 WHERE employee_id = emp_id;
        WHEN 3 THEN UPDATE employees SET salary = salary + 300 WHERE employee_id = emp_id;
        WHEN 4 THEN UPDATE employees SET salary = salary + 400 WHERE employee_id = emp_id;
        ELSE UPDATE employees SET salary = salary + 500 WHERE employee_id = emp_id;
        END CASE;
END //

DELIMITER ;

#调用
CALL update_salary_by_eid5(101);


SELECT *
FROM employees;

DROP PROCEDURE update_salary_by_eid5;
```

#### 循环结构之LOOP

> LOOP一般搭配LEAVE子句使用，LEAVE子句一般用于跳出循环使用。

##### 语法

```mysql
[loop_label:] LOOP			#其中，loop_label表示LOOP语句的标注名称，该参数可以省略。
	循环执行的语句
END LOOP [loop_label]
```

##### 使用

```mysql
#举例1：

DELIMITER //
CREATE PROCEDURE test_loop()
BEGIN
    #声明局部变量
    DECLARE num INT DEFAULT 1;

    loop_label:
    LOOP
        #重新赋值
        SET num = num + 1;

        #可以考虑某个代码程序反复执行。（略）

        IF num >= 10 THEN
            LEAVE loop_label;
        END IF;
    END LOOP loop_label;

    #查看num
    SELECT num;

END //

DELIMITER ;

#调用
CALL test_loop();


#举例2：当市场环境变好时，公司为了奖励大家，决定给大家涨工资。
#声明存储过程“update_salary_loop()”，声明OUT参数num，输出循环次数。
#存储过程中实现循环给大家涨薪，薪资涨为原来的1.1倍。直到全公司的平
#均薪资达到12000结束。并统计循环次数。


DELIMITER //

CREATE PROCEDURE update_salary_loop(OUT num INT)
BEGIN
    #声明变量
    DECLARE avg_sal DOUBLE; #记录员工的平均工资

    DECLARE loop_count INT DEFAULT 0;
    #记录循环的次数

    #① 初始化条件
    #获取员工的平均工资
    SELECT AVG(salary) INTO avg_sal FROM employees;

    loop_lab:
    LOOP
        #② 循环条件
        #结束循环的条件
        IF avg_sal >= 12000
        THEN
            LEAVE loop_lab;
        END IF;

        #③ 循环体
        #如果低于12000，更新员工的工资
        UPDATE employees SET salary = salary * 1.1;

        #④ 迭代条件
        #更新avg_sal变量的值
        SELECT AVG(salary) INTO avg_sal FROM employees;

        #记录循环次数
        SET loop_count = loop_count + 1;

    END LOOP loop_lab;

    #给num赋值
    SET num = loop_count;

END //


DELIMITER ;

SELECT AVG(salary)
FROM employees;

CALL update_salary_loop(@num);
SELECT @num;
```

#### 循环结构之WHILE

##### 语法

```mysql
[while_label:] WHILE 循环条件 DO	#while_label为WHILE语句的标注名称
循环体
END WHILE [while_label];
```

##### 示例

```mysql
#举例1：
DELIMITER //
CREATE PROCEDURE test_while()

BEGIN
    #初始化条件
    DECLARE num INT DEFAULT 1;
    #循环条件
    WHILE num <= 10
        DO
        #循环体（略）

        #迭代条件
            SET num = num + 1;
        END WHILE;

    #查询
    SELECT num;

END //

DELIMITER ;

#调用
CALL test_while();

#举例2：市场环境不好时，公司为了渡过难关，决定暂时降低大家的薪资。
#声明存储过程“update_salary_while()”，声明OUT参数num，输出循环次数。
#存储过程中实现循环给大家降薪，薪资降为原来的90%。直到全公司的平均薪资
#达到5000结束。并统计循环次数。

DELIMITER //
CREATE PROCEDURE update_salary_while(OUT num INT)

BEGIN
    #声明变量
    DECLARE avg_sal DOUBLE; #记录平均工资
    DECLARE while_count INT DEFAULT 0;
    #记录循环次数

    #赋值
    SELECT AVG(salary) INTO avg_sal FROM employees;

    WHILE avg_sal > 5000
        DO
            UPDATE employees SET salary = salary * 0.9;
            SET while_count = while_count + 1;

            SELECT AVG(salary) INTO avg_sal FROM employees;

        END WHILE;

    #给num赋值
    SET num = while_count;


END //

DELIMITER ;

#调用
CALL update_salary_while(@num);

SELECT @num;

SELECT AVG(salary)
FROM employees;
```

#### 循环结构之REPEAT

> REPEAT 循环首先会执行一次循环，然后再在 UNTIL 中进行表达式的判断。
>
> 类似于java中的do-while

##### 语法

```mysql
[repeat_label:] REPEAT		#repeat_label为REPEAT语句的标注名称，该参数可以省略
	循环体的语句
UNTIL 结束循环的条件表达式		#注。这里别加分号，别写错了
END REPEAT [repeat_label]
```

##### 示例

```mysql
#举例1：

DELIMITER //

CREATE PROCEDURE test_repeat()
BEGIN
    #声明变量
    DECLARE num INT DEFAULT 1;

    REPEAT
        SET num = num + 1;
    UNTIL num >= 10		#注。这里别加分号，别写错了
        END REPEAT;

    #查看
    SELECT num;

END //


DELIMITER ;

#调用
CALL test_repeat();

#举例2：当市场环境变好时，公司为了奖励大家，决定给大家涨工资。
#声明存储过程“update_salary_repeat()”，声明OUT参数num，输出循环次数。
#存储过程中实现循环给大家涨薪，薪资涨为原来的1.15倍。直到全公司的平均
#薪资达到13000结束。并统计循环次数。


DELIMITER //
CREATE PROCEDURE update_salary_repeat(OUT num INT)

BEGIN
    #声明变量
    DECLARE avg_sal DOUBLE; #记录平均工资
    DECLARE repeat_count INT DEFAULT 0;
    #记录循环次数

    #赋值
    SELECT AVG(salary) INTO avg_sal FROM employees;

    REPEAT
        UPDATE employees SET salary = salary * 1.15;
        SET repeat_count = repeat_count + 1;

        SELECT AVG(salary) INTO avg_sal FROM employees;

    UNTIL avg_sal >= 13000
        END REPEAT;

    #给num赋值
    SET num = repeat_count;


END //

DELIMITER ;

#调用
CALL update_salary_repeat(@num);
SELECT @num;


SELECT AVG(salary)
FROM employees;
```

#### 跳转语句之LEAVE语句

> 可以用在循环语句内，或者以 BEGIN 和 END 包裹起来的程序体内，表示跳出循环或者跳出程序体的操作。
>
> 类似goto

##### 语法

```mysql
LEAVE 标记名
```

##### 示例

```mysql
#5.1 LEAVE的使用
/*
**举例1：**创建存储过程 “leave_begin()”，声明INT类型的IN参数num。给BEGIN...END加标记名，
并在BEGIN...END中使用IF语句判断num参数的值。

- 如果num<=0，则使用LEAVE语句退出BEGIN...END；
- 如果num=1，则查询“employees”表的平均薪资；
- 如果num=2，则查询“employees”表的最低薪资；
- 如果num>2，则查询“employees”表的最高薪资。

IF语句结束后查询“employees”表的总人数。

*/

DELIMITER //

CREATE PROCEDURE leave_begin(IN num INT)

begin_label:
BEGIN
    IF num <= 0
    THEN
        LEAVE begin_label;
    ELSEIF num = 1
    THEN
        SELECT AVG(salary) FROM employees;
    ELSEIF num = 2
    THEN
        SELECT MIN(salary) FROM employees;
    ELSE
        SELECT MAX(salary) FROM employees;
    END IF;

    #查询总人数
    SELECT COUNT(*) FROM employees;

END //

DELIMITER ;

#调用
CALL leave_begin(1);


#举例2：当市场环境不好时，公司为了渡过难关，决定暂时降低大家的薪资。
#声明存储过程“leave_while()”，声明OUT参数num，输出循环次数，存储过程中使用WHILE
#循环给大家降低薪资为原来薪资的90%，直到全公司的平均薪资小于等于10000，并统计循环次数。

DELIMITER //
CREATE PROCEDURE leave_while(OUT num INT)

BEGIN
    #
    DECLARE avg_sal DOUBLE;#记录平均工资
    DECLARE while_count INT DEFAULT 0; #记录循环次数

    SELECT AVG(salary) INTO avg_sal FROM employees; #① 初始化条件

    while_label:
    WHILE TRUE
        DO #② 循环条件

            #③ 循环体
            IF avg_sal <= 10000 THEN
                LEAVE while_label;
            END IF;

            UPDATE employees SET salary = salary * 0.9;
            SET while_count = while_count + 1;

            #④ 迭代条件
            SELECT AVG(salary) INTO avg_sal FROM employees;

        END WHILE;

    #赋值
    SET num = while_count;

END //

DELIMITER ;

#调用
CALL leave_while(@num);
SELECT @num;

SELECT AVG(salary)
FROM employees;
```

#### 跳转语句之ITERATE语句

> 只能用在循环语句（LOOP、REPEAT和WHILE语句）内，表示重新开始循环，将执行顺序转到语句段开头处。
>
> 可以理解为continue

##### 语法

```mysql
ITERATE label
```

##### 示例

```mysql
#5.2 ITERATE的使用
/*
举例： 定义局部变量num，初始值为0。循环结构中执行num + 1操作。

- 如果num < 10，则继续执行循环；
- 如果num > 15，则退出循环结构；

*/

DELIMITER //

CREATE PROCEDURE test_iterate()

BEGIN
    DECLARE num INT DEFAULT 0;

    loop_label:
    LOOP
        #赋值
        SET num = num + 1;

        IF num < 10
        THEN
            ITERATE loop_label;
        ELSEIF num > 15
        THEN
            LEAVE loop_label;
        END IF;

        SELECT '永远相信美好的事情即将发生';

    END LOOP;

END //

DELIMITER ;

CALL test_iterate();


SELECT *
FROM employees;
```



### 游标

> 游标可以像指针一样，随意定位到结果中的一条记录。
>
> 游标让 SQL 这种面向集合的语言有了面向过程开发的能力。
>
> ​		在使用游标的过程中，会对数据行进行**加锁** ，这样在业务并发量大的时候，不仅会影响业务之间的效率，还会 消耗系统资源 ，造成内存不足，这是因为游标是在内存中进行的处理。

#### 游标的使用步骤

##### 声明游标

```mysql
DECLARE cursor_name CURSOR FOR select_statement;	#select_statement代表查询语句
```

如：

```mysql
DECLARE cur_emp CURSOR FOR
SELECT employee_id,salary FROM employees;

DECLARE cursor_fruit CURSOR FOR
SELECT f_name, f_price FROM fruits ;
```

##### 打开游标

```mysql
OPEN cursor_name
```

##### 使用游标（从游标中取得数据）

语法

> 可以理解为游标中有一个指针，指向下一条数据。

```mysql
#这句的作用是使用 cursor_name 这个游标来读取当前行，并且将数据保存到 var_name 这个变量中
#游标指针指到下一行。
FETCH cursor_name INTO var_name [, var_name] ...		#游标有多个列，INTO之后就必须有对应数量的变量
```

##### 关闭游标

```mysql
CLOSE cursor_name
#因为游标会占用系统资源 ，如果不及时关闭，游标会一直保持到存储过程结束，影响系统运行的效率。
#关闭游标之后，我们就不能再检索查询结果中的数据行，如果需要检索只能再次打开游标
```

#### 示例

```mysql
#6. 游标的使用
/*
游标使用的步骤：
① 声明游标
② 打开游标
③ 使用游标（从游标中获取数据）
④ 关闭游标


*/

#举例：创建存储过程“get_count_by_limit_total_salary()”，声明IN参数 limit_total_salary，
#DOUBLE类型；声明OUT参数total_count，INT类型。函数的功能可以实现累加薪资最高的几个员工的薪资值，
#直到薪资总和达到limit_total_salary参数的值，返回累加的人数给total_count。

DELIMITER //

CREATE PROCEDURE get_count_by_limit_total_salary(IN limit_total_salary DOUBLE, OUT total_count INT)
BEGIN

    #声明局部变量
    DECLARE sum_sal DOUBLE DEFAULT 0.0; #记录累加的工资总额
    DECLARE emp_sal DOUBLE; #记录每一个员工的工资
    DECLARE emp_count INT DEFAULT 0;
    #记录累加的人数


    #1.声明游标
    DECLARE emp_cursor CURSOR FOR SELECT salary FROM employees ORDER BY salary DESC;

    #2.打开游标
    OPEN emp_cursor;

    REPEAT

        #3.使用游标
        FETCH emp_cursor INTO emp_sal;

        SET sum_sal = sum_sal + emp_sal;
        SET emp_count = emp_count + 1;
    UNTIL sum_sal >= limit_total_salary
        END REPEAT;

    SET total_count = emp_count;

    #4.关闭游标
    CLOSE emp_cursor;

END //


DELIMITER ;

#调用
CALL get_count_by_limit_total_salary(200000, @total_count);
SELECT @total_count;
```



### 示例

```mysql
#3. 创建存储过程insert_data(),传入参数为 IN 的 INT 类型变量 insert_count,实现向admin表中
#批量插入insert_count条记录

CREATE TABLE admin(
id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(25) NOT NULL,
user_pwd VARCHAR(35) NOT NULL
);

SELECT * FROM admin;

DELIMITER $

CREATE PROCEDURE insert_data(IN insert_count INT)

BEGIN
	#声明变量
	DECLARE init_count INT DEFAULT 1; #①初始化条件
	
	WHILE init_count <= insert_count DO #② 循环条件
		#③ 循环体
		INSERT INTO admin(user_name,user_pwd) VALUES (CONCAT('atguigu-',init_count),ROUND(RAND()*1000000));
		#④ 迭代条件
		SET init_count = init_count + 1;
	END WHILE;

END $


DELIMITER ;

#调用
CALL insert_data(100);
```

```mysql
#3. 游标的使用

#创建存储过程update_salary()，参数1为 IN 的INT型变量dept_id，表示部门id；
#参数2为 IN的INT型变量change_sal_count，表示要调整薪资的员工个数。查询指定id部门的员工信息，
#按照salary升序排列，根据hire_date的情况，调整前change_sal_count个员工的薪资，详情如下。

DELIMITER $

CREATE PROCEDURE update_salary(IN dept_id INT,IN change_sal_count INT)
BEGIN
	#声明变量
	DECLARE emp_id INT ;#记录员工id
	DECLARE emp_hire_date DATE; #记录员工入职时间
	
	DECLARE init_count INT DEFAULT 1; #用于表示循环结构的初始化条件
	DECLARE add_sal_rate DOUBLE ; #记录涨薪的比例
	
	#声明游标
	DECLARE emp_cursor CURSOR FOR SELECT employee_id,hire_date FROM employees 
	WHERE department_id = dept_id ORDER BY salary ASC;
	
	#打开游标
	OPEN emp_cursor;
	
	WHILE init_count <= change_sal_count DO

		#使用游标
		FETCH emp_cursor INTO emp_id,emp_hire_date;
		
		#获取涨薪的比例
		IF (YEAR(emp_hire_date) < 1995)
			THEN SET add_sal_rate = 1.2;
		ELSEIF(YEAR(emp_hire_date) <= 1998)
			THEN SET add_sal_rate = 1.15;
		ELSEIF(YEAR(emp_hire_date) <= 2001)
			THEN SET add_sal_rate = 1.10;
		ELSE
			SET add_sal_rate = 1.05;
		END IF;
		
		#涨薪操作
		UPDATE employees SET salary = salary * add_sal_rate
		WHERE employee_id = emp_id;
		
		#迭代条件的更新
		SET init_count = init_count + 1;
	
	END WHILE;
	
	#关闭游标
	CLOSE emp_cursor;

END $


DELIMITER ;


#调用
CALL update_salary(50,3);


SELECT employee_id,hire_date,salary
FROM employees
WHERE department_id = 50
ORDER BY salary ASC;

```



## 触发器

> MySQL从 5.0.2 版本开始支持触发器。
>
> MySQL的触发器和存储过程一样，都是嵌入到MySQL服务器的一段程序。

> 触发器是由 事件来触发 某个操作，这些事件包括 INSERT 、 UPDATE 、 DELETE 事件。
> 当数据库执行这些语句时候，就相当于事件发生了，就会 自动 激发触发器执行相应的操作。

### 触发器的创建

#### 创建语法

```mysql
CREATE TRIGGER 触发器名称
{BEFORE|AFTER} {INSERT|UPDATE|DELETE} ON 表名
FOR EACH ROW
触发器执行的语句块;
```

> * `表名` ：表示触发器监控的对象。
> * `BEFORE|AFTER` ：表示触发的时间。BEFORE 表示在事件之前触发；AFTER 表示在事件之后触发。
> * `INSERT|UPDATE|DELETE` ：表示触发的事件。
> * `触发器执行的语句块`：可以是单条SQL语句，也可以是由BEGIN…END结构组成的复合语句块。

#### 示例

```mysql
#举例1：
#① 创建数据表

CREATE TABLE test_trigger
(
    id     INT PRIMARY KEY AUTO_INCREMENT,
    t_note VARCHAR(30)
);


CREATE TABLE test_trigger_log
(
    id    INT PRIMARY KEY AUTO_INCREMENT,
    t_log VARCHAR(30)
);

#② 查看表数据
SELECT *
FROM test_trigger;

SELECT *
FROM test_trigger_log;

#③ 创建触发器
#创建名称为before_insert_test_tri的触发器，向test_trigger数据表插入数据之前，
#向test_trigger_log数据表中插入before_insert的日志信息。

DELIMITER //

CREATE TRIGGER before_insert_test_tri
    BEFORE INSERT
    ON test_trigger
    FOR EACH ROW
BEGIN
    INSERT INTO test_trigger_log(t_log)
    VALUES ('before insert...');
END //

DELIMITER ;

#④ 测试
INSERT INTO test_trigger(t_note)
VALUES ('Tom...');


SELECT *
FROM test_trigger;

SELECT *
FROM test_trigger_log;
```

```mysql
#举例2：
#创建名称为after_insert_test_tri的触发器，向test_trigger数据表插入数据之后，
#向test_trigger_log数据表中插入after_insert的日志信息。

DELIMITER $

CREATE TRIGGER after_insert_test_tri
    AFTER INSERT
    ON test_trigger
    FOR EACH ROW
BEGIN
    INSERT INTO test_trigger_log(t_log)
    VALUES ('after insert...');
END $

DELIMITER ;

#测试
INSERT INTO test_trigger(t_note)
VALUES ('Jerry2...');

SELECT *
FROM test_trigger;

SELECT *
FROM test_trigger_log;
```

```mysql
#举例3：
#定义触发器“salary_check_trigger”，基于员工表“employees”的INSERT事件，
#在INSERT之前检查将要添加的新员工薪资是否大于他领导的薪资，如果大于领导薪资，
#则报sqlstate_value为'HY000'的错误，从而使得添加失败。
#创建触发器
DELIMITER //

CREATE TRIGGER salary_check_trigger
    BEFORE INSERT
    ON employees
    FOR EACH ROW
BEGIN
    #查询到要添加的数据的manager的薪资
    DECLARE mgr_sal DOUBLE;

    SELECT salary
    INTO mgr_sal
    FROM employees
    WHERE employee_id = NEW.manager_id;

    IF NEW.salary > mgr_sal
    THEN
        SIGNAL SQLSTATE 'HY000' SET MESSAGE_TEXT = '薪资高于领导薪资错误';
    END IF;

END //

DELIMITER ;

#测试
DESC employees;

#添加成功：依然触发了触发器salary_check_trigger的执行
INSERT INTO employees(employee_id, last_name, email, hire_date, job_id, salary, manager_id)
VALUES (300, 'Tom', 'tom@126.com', CURDATE(), 'AD_VP', 8000, 103);

#添加失败
INSERT INTO employees(employee_id, last_name, email, hire_date, job_id, salary, manager_id)
VALUES (301, 'Tom1', 'tom1@126.com', CURDATE(), 'AD_VP', 10000, 103);
```

### 查看触发器

```mysql
#2. 查看触发器
#① 查看当前数据库的所有触发器的定义
SHOW TRIGGERS;

#② 方式2：查看当前数据库中某个触发器的定义
SHOW CREATE TRIGGER salary_check_trigger;

#③ 方式3：从系统库information_schema的TRIGGERS表中查询“salary_check_trigger”触发器的信息。
SELECT *
FROM information_schema.TRIGGERS;
```

### 删除触发器

```mysql
#3. 删除触发器
DROP TRIGGER IF EXISTS after_insert_test_tri;
```

### 触发器的优缺点

> 优点：
>
> * 触发器可以确保数据的完整性
> * 触发器可以帮助我们记录操作日志
> * 触发器还可以用在操作数据前，对数据进行合法性检查
>
> 缺点：
>
> * 可能不会想到错误是由触发器导致的
>
> 注意，如果在子表中定义了==外键约束==，并且外键指定了ON UPDATE/DELETE CASCADE/SET NULL子句，此时修改父表被引用的键值或删除父表被引用的记录行时，也会引起子表的修改和删除操作，此时基于子表的UPDATE和DELETE语句定义的==触发器并不会被激活==。

### 示例

```mysql
#3. 创建触发器emps_insert_trigger，每当向emps表中添加一条记录时，同步将这条记录
#添加到emps_back表中

DELIMITER //

CREATE TRIGGER emps_insert_trigger
AFTER INSERT ON emps
FOR EACH ROW
BEGIN
	#将新添加到emps表中的记录添加到emps_back表中
	INSERT INTO emps_back(employee_id,last_name,salary)
	VALUES(NEW.employee_id,NEW.last_name,NEW.salary);
END //

DELIMITER ;

#show triggers;


#4. 验证触发器是否起作用
SELECT * FROM emps;

SELECT * FROM emps_back;

INSERT INTO emps(employee_id,last_name,salary)
VALUES(301,'Tom1',3600);

```

```mysql
#3. 创建触发器emps_del_trigger，每当向emps表中删除一条记录时，同步将删除的这条记录添加到emps_back1表中

DELIMITER //

CREATE TRIGGER emps_del_trigger
BEFORE DELETE ON emps
FOR EACH ROW
BEGIN
	#将emps表中删除的记录，添加到emps_back1表中。
	INSERT INTO emps_back1(employee_id,last_name,salary)
	VALUES(OLD.employee_id,OLD.last_name,OLD.salary);
END //

DELIMITER ;


#4. 验证触发器是否起作用

DELETE FROM emps
WHERE employee_id = 101;


DELETE FROM emps;

SELECT * FROM emps;


SELECT * FROM emps_back1;
```



## 窗口函数（MySQL8）

> MySQL8开始支持
> https://dev.mysql.com/doc/refman/8.0/en/window-function-descriptions.html#function_row-number
>
> 在这种需要用到分组统计的结果对每一条记录进行计算的场景下，使用窗口函数更好。
> 换句话说：==窗口函数，会将分组统计的结果作用与每一行！==
> 一个开窗函数，在查询结果中表现为一列。
>
> 窗口函数可以分为`静态窗口函数`和`动态窗口函数 `。
> 	静态窗口函数的窗口大小是固定的，不会因为记录的不同而不同；
> 	动态窗口函数的窗口大小会随着记录的不同而变化。
>
> ![1697470275300](MySQL.assets/1697470275300.png)

### 语法结构

```mysql
函数 OVER（[PARTITION BY 字段名 ORDER BY 字段名 ASC|DESC]）
#或
函数 OVER 窗口名 … WINDOW 窗口名 AS （[PARTITION BY 字段名 ORDER BY 字段名 ASC|DESC]）
```

> * OVER 关键字指定函数窗口的范围。
>   * 如果省略后面括号中的内容，则窗口会包含满足WHERE条件的所有记录，窗口函数会基于所有满足WHERE条件的记录进行计算。
>   * 如果OVER关键字后面的括号不为空，则可以使用如下语法设置窗口。
> * 窗口名：为窗口设置一个别名，用来标识窗口。
> * PARTITION BY子句：指定窗口函数按照哪些字段进行分组。分组后，窗口函数可以在每个分组中分别执行。
> * ORDER BY子句：指定窗口函数按照哪些字段进行排序。执行排序操作使窗口函数按照排序后的数据记录的顺序进行编号。
> * FRAME子句：为分区中的某个子集定义规则，可以用来作为滑动窗口使用。

### 常用窗口函数

#### 演示数据

```mysql
CREATE TABLE goods
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    category    VARCHAR(15),
    NAME        VARCHAR(30),
    price       DECIMAL(10, 2),
    stock       INT,
    upper_time  DATETIME
);


INSERT INTO goods(category_id, category, NAME, price, stock, upper_time)
VALUES (1, '女装/女士精品', 'T恤', 39.90, 1000, '2020-11-10 00:00:00'),
       (1, '女装/女士精品', '连衣裙', 79.90, 2500, '2020-11-10 00:00:00'),
       (1, '女装/女士精品', '卫衣', 89.90, 1500, '2020-11-10 00:00:00'),
       (1, '女装/女士精品', '牛仔裤', 89.90, 3500, '2020-11-10 00:00:00'),
       (1, '女装/女士精品', '百褶裙', 29.90, 500, '2020-11-10 00:00:00'),
       (1, '女装/女士精品', '呢绒外套', 399.90, 1200, '2020-11-10 00:00:00'),
       (2, '户外运动', '自行车', 399.90, 1000, '2020-11-10 00:00:00'),
       (2, '户外运动', '山地自行车', 1399.90, 2500, '2020-11-10 00:00:00'),
       (2, '户外运动', '登山杖', 59.90, 1500, '2020-11-10 00:00:00'),
       (2, '户外运动', '骑行装备', 399.90, 3500, '2020-11-10 00:00:00'),
       (2, '户外运动', '运动外套', 799.90, 500, '2020-11-10 00:00:00'),
       (2, '户外运动', '滑板', 499.90, 1200, '2020-11-10 00:00:00');
```

#### 序号函数

##### ROW_NUMBER()函数

> 对当前窗口内的数据添加序号： 1、2、3、4、5、6......

```mysql
#查询 goods 数据表中每个商品分类下价格降序排列的各个商品信息
SELECT ROW_NUMBER() OVER (PARTITION BY category_id ORDER BY price DESC) AS row_num,
       id,
       category_id,
       category,
       NAME,
       price,
       stock
FROM goods;
```

![1697471271199](MySQL.assets/1697471271199.png)

```mysql
#查询 goods 数据表中每个商品分类下价格最高的3种商品信息。
SELECT *
FROM (
         SELECT ROW_NUMBER() OVER (PARTITION BY category_id ORDER BY price DESC) AS
                    row_num,
                id,
                category_id,
                category,
                NAME,
                price,
                stock
         FROM goods) t
WHERE row_num <= 3;
```

![1697471499897](MySQL.assets/1697471499897.png)

##### RANK()函数

> 使用RANK()函数能够对序号进行==并列排序==，并且会跳过重复的序号，比如序号为1、1、3。

```mysql
SELECT RANK() OVER (PARTITION BY category_id ORDER BY price DESC) AS row_num,
       id,
       category_id,
       category,
       NAME,
       price,
       stock
FROM goods;
```

![1697471686377](MySQL.assets/1697471686377.png)

##### DENSE_RANK()函数

> ENSE_RANK()函数对序号进行==并列排序==，并且==不会跳过重复的序号==，比如序号为1、1、2。

```mysql
SELECT *
FROM (
         SELECT DENSE_RANK() OVER (PARTITION BY category_id ORDER BY price DESC) AS
                    row_num,
                id,
                category_id,
                category,
                NAME,
                price,
                stock
         FROM goods) t
WHERE category_id = 1
  AND row_num <= 3;
```

![1697471858890](MySQL.assets/1697471858890.png)

#### 分布函数

##### PERCENT_RANK()函数

> PERCENT_RANK()函数是等级值百分比函数。按照如下方式进行计算。
>
> 注意：是在当前窗口内
>
> ```mysql
> (rank - 1) / (rows - 1)
> ```
>
> 其中，rank的值为使用RANK()函数产生的序号，rows的值为当前窗口的总记录数。

```mysql
#   rows -1  = 6 - 1 = 5  
#写法一：
SELECT RANK() OVER (PARTITION BY category_id ORDER BY price DESC)         AS r,
       PERCENT_RANK() OVER (PARTITION BY category_id ORDER BY price DESC) AS pr,
       id,
       category_id,
       category,
       NAME,
       price,
       stock
FROM goods
WHERE category_id = 1;
#写法二：
SELECT RANK() OVER w         AS r,
       PERCENT_RANK() OVER w AS pr,
       id,
       category_id,
       category,
       NAME,
       price,
       stock
FROM goods
WHERE category_id = 1 WINDOW w AS (PARTITION BY category_id ORDER BY price
    DESC);
```

![1697472125538](MySQL.assets/1697472125538.png)

##### CUME_DIST()函数

> CUME_DIST()为     当前窗口内  ==组内前面的行数（包含本行）/分组后本组的总行数==
>
> CUME_DIST()函数主要用于查询小于或等于某个值的比例。

```mysql
#查询goods数据表中小于或等于当前价格的比例。
# CUME_DIST()   组内前面的行数（包含本行）/ 分组后本组的总行数
SELECT CUME_DIST() OVER (PARTITION BY category_id ORDER BY price ASC) AS cd,
       id,
       category,
       NAME,
       price
FROM goods;
```

![1697472753673](MySQL.assets/1697472753673.png)

#### 前后函数

##### LAG(expr,n)函数

> LAG(expr,n)函数返回当前窗口内，当前行的前n行的expr的值。

```mysql
#查询goods数据表中前一个商品价格与当前商品价格的差值。
SELECT id, category, NAME, price, pre_price, price - pre_price AS diff_price
FROM (
         SELECT id, category, NAME, price, LAG(price, 1) OVER w AS pre_price
         FROM goods
             WINDOW w AS (PARTITION BY category_id ORDER BY price)) t;
```

![1697473032072](MySQL.assets/1697473032072.png)

##### LEAD(expr,n)函数

> LEAD(expr,n)函数返回当前窗口内当前行的后n行的expr的值。

```mysql
#查询goods数据表中后一个商品价格与当前商品价格的差值。
SELECT id,
       category,
       NAME,
       behind_price,
       price,
       behind_price - price AS diff_price
FROM (
         SELECT id, category, NAME, price, LEAD(price, 1) OVER w AS behind_price
         FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price)) t;
```

![1697473215508](MySQL.assets/1697473215508.png)

#### 首尾函数

##### FIRST_VALUE(expr)函数

> FIRST_VALUE(expr)函数返回当前窗口内第一个expr的值。

```mysql
SELECT id,
       category,
       NAME,
       price,
       stock,
       FIRST_VALUE(price) OVER w AS
           first_price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);
```

![1697473403917](MySQL.assets/1697473403917.png)

##### LAST_VALUE(expr)函数

> LAST_VALUE(expr)函数返回当前窗口的最后一个expr的值。

```mysql
SELECT id, category, NAME, price, stock, LAST_VALUE(price) OVER w AS last_price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);
```

![1697473582131](MySQL.assets/1697473582131.png)

#### 其他函数

##### NTH_VALUE(expr,n)函数

> NTH_VALUE(expr,n)函数返回窗口内第n个expr的值。

```mysql
#NTH_VALUE(expr,n)
SELECT id,
       category,
       NAME,
       price,
       NTH_VALUE(price, 2) OVER w AS second_price,
       NTH_VALUE(price, 3) OVER w AS third_price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);
```

![1697474377940](MySQL.assets/1697474377940.png)

##### NTILE(n)函数

> NTILE(n)函数将分区中的有序数据分为n个桶，记录桶编号。

```mysql
#将goods表中的商品按照价格分为3组。
SELECT NTILE(3) OVER w AS nt, id, category, NAME, price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);
```

![1697474552046](MySQL.assets/1697474552046.png)



## 公用表表达式（MySQL8）

> 公用表表达式（或通用表表达式）简称为CTE（Common Table Expressions）。
>
> CTE是一个命名的临时结果集，作用范围是当前语句。
>
> 可以考虑代替子查询。

### 普通公用表表达式

```mysql
WITH CTE名称
AS （子查询）
SELECT|DELETE|UPDATE 语句;
```

```mysql
WITH emp_dept_id
         AS (SELECT DISTINCT department_id FROM employees)
SELECT *
FROM departments d
         JOIN emp_dept_id e
              ON d.department_id = e.department_id;
```



### 递归公用表表达式

> 递归公用表表达式由 2 部分组成，分别是种子查询和递归查询，
>
> 中间通过关键字 UNION [ALL]进行连接。
> 这里的种子查询，意思就是获得递归的初始值。这个查询只会运行一次，以创建初始数据集，
> 之后递归查询会一直执行，直到没有任何新的查询数据产生，递归返回。

```mysql
WITH RECURSIVE
CTE名称 AS （子查询）
SELECT|DELETE|UPDATE 语句;
```

**案例：**

```mysql
#案例：针对于我们常用的employees表，包含employee_id，last_name和manager_id三个字段。如果a是b的管理者，那么，我们可以把b叫做a的下属，如果同时b又是c的管理者，那么c就是b的下属，是a的下下属。
#列出所有具有下下属身份的人员信息。
WITH RECURSIVE cte
                   AS
                   (
                       -- 种子查询，找到第一代领导
                       SELECT employee_id, last_name, manager_id, 1 AS n
                       FROM employees
                       WHERE employee_id = 100
                       UNION ALL
                       -- 递归查询，找出以递归公用表表达式的人为领导的人
                       SELECT a.employee_id, a.last_name, a.manager_id, n + 1
                       FROM employees AS a
                                JOIN cte    #重点在这里
                                     ON (a.manager_id = cte.employee_id)
                   )
SELECT employee_id, last_name
FROM cte
WHERE n >= 3;
```



## MySQL数据目录

> 详见：[<font color="violet">第02章_MySQL的数据目录.pdf</font>](./相关资料1/第02章_MySQL的数据目录.pdf)
>
> /var/lib/mysql/			数据库文件的存放路径
>
> /usr/bin（mysqladmin、mysqlbinlog、mysqldump等命令）和/usr/sbin			相关命令目录
>
> /usr/share/mysql-8.0（命令及配置文件），/etc/mysql（如my.cnf）					配置文件目录

系统表空间与独立表空间

> * MySQL5.6.6（不包括5.6.6）之前默认的把各个表的数据存储到系统表空间中。
> * MySQL5.6.6（包括5.6.6）之后，每一个表建立一个独立表空间。

### InnoDB

> MySQL8.0之后`.frm`文件并入`.ibd`文件
>
> 注：视图只会存储为   `视图名.frm`文件

![1697565336634](MySQL.assets/1697565336634.png)

![1697565700741](MySQL.assets/1697565700741.png)

### MyISAM

![1697566147525](MySQL.assets/1697566147525.png)



### 查看ibd文件

> MySQL8之后，`.frm`文件变为`序列化字典信息(Serialized Dictionary Information,   SDI)`，`SDI`文件写在ibd文件内部。

> 可以通过ibd2sdi工具查看后缀为`.ibd`的文件
>
> 这个工具MySQL8版本自带，配好环境在哪里都可以用。
>
> ```mysql
> ibd2sdi --dump-file=student.txt student.ibd
> ```
>
> 此时会生成`--dump-file所指定的文件`
>
> ![1697684960504](MySQL.assets/1697684960504.png)
>
> ![1697685183373](MySQL.assets/1697685183373.png)

## 用户与权限管理

### 用户管理

> 注：user表是联合主键
>
> ![1697687103770](MySQL.assets/1697687103770.png)
>
> ![1697698908532](MySQL.assets/1697698908532.png)
>
> ![1697698923864](MySQL.assets/1697698923864.png)

#### 创建用户

> ```mysql
> # []为可选项
> CREATE USER 用户名 [IDENTIFIED BY '密码'][,用户名 [IDENTIFIED BY '密码']];
> ```
>
> * 用户名由`用户（User）`和`主机名（Host）`构成。
> * CREATE USER语句可以同时创建多个用户。

```mysql
#示例
CREATE USER zhang3 IDENTIFIED BY '123123'; # 默认host是 %
CREATE USER 'kangshifu'@'localhost' IDENTIFIED BY '123456';
```

#### 修改用户

> ```mysql
> UPDATE mysql.user SET USER='li4' WHERE USER='wang5';
> FLUSH PRIVILEGES;		#必须刷新权限，才能立即生效
> ```
>
> ![1697686656964](MySQL.assets/1697686656964.png)

#### 删除用户

**方式一：使用DROP方式删除（推荐）**

> 使用DROP USER语句来删除用户时，必须拥有DROP USER权限。
>
> ```mysql
> #语法
> DROP USER user[,user]…;
> ```
>
> 示例：
>
> ```mysql
> DROP USER li4 ; # 默认删除host为%的用户
> DROP USER 'kangshifu'@'localhost';
> ```

**方式二：使用DELETE方式删除（不推荐）**

> 注：使用该方式删除，可能会残留权限信息在权限表里。所以不推荐该方式。
>
> ```mysql
> #语法
> DELETE FROM mysql.user WHERE Host=’hostname’ AND User=’username’;
> FLUSH PRIVILEGES;		#DML需要使用刷新语句立即生效。
> ```
>
> 示例：
>
> ```mysql
> DELETE FROM mysql.user WHERE Host='localhost' AND User='Emily';
> FLUSH PRIVILEGES;
> ```

#### 设置（修改）当前用户密码

> 不推荐该写法！！！！
>
> ```mysql
> # 修改当前用户的密码：（MySQL5.7测试有效）
> SET PASSWORD = PASSWORD('123456');
> ```

**方式一：使用ALTER USER命令**

```mysql
#语法
ALTER USER USER() IDENTIFIED BY 'new_password';
```

**方式二：使用SET语句**

```mysql
#语法
SET PASSWORD='new_password';
```



#### 修改其他用户密码

**方式一：使用ALTER语句**

```mysql
ALTER USER user [IDENTIFIED BY '新密码']
[,user[IDENTIFIED BY '新密码']]…;
```

**方式二：使用SET命令**

```mysql
SET PASSWORD FOR 'username'@'hostname'='new_password';
```

**方式三：使用UPDATE语句（不推荐）**

```mysql
UPDATE MySQL.user SET authentication_string=PASSWORD("123456")
WHERE User = "username" AND Host = "hostname";
```



### 权限管理

#### 权限列表

> MySQL权限分布
>
> | 权限分布 | 可能的设置权限                                               |
> | -------- | ------------------------------------------------------------ |
> | 表权限   | `SELECT`、`INSERT`、`UPDATE`、`DELETE`、`CREATE`、`DROP`、`GRANT`、`REFERENCES`、`INDEX`、`ALTER` |
> | 列权限   | `SELECT`、`INSERT`、`UPDATE`、`REFERENCES`                   |
> | 过程权限 | `EXECUTE`、`ALTER`、`ROUTINE`、`GRANT`                       |
>
> 
>
> * `CREATE和DROP权限` ，可以创建新的数据库和表，或删除（移掉）已有的数据库和表。
> * `SELECT、INSERT、UPDATE和DELETE权限`，允许在一个数据库现有的表上实施操作。
> *  `SELECT权限`
> * `INDEX权限` 允许创建或删除索引，INDEX适用于已有的表。如果具有某个表的CREATE权限，就可以在CREATE TABLE语句中包括索引定义。
> *  `ALTER权限` 可以使用ALTER TABLE来更改表的结构和重新命名表。
> * `CREATE ROUTINE权限` 用来创建保存的程序（函数和程序），ALTER ROUTINE权限用来更改和删除保存的程序， EXECUTE权限 用来执行保存的程序。 
> *  `GRANT权限` 允许授权给其他用户，可用于数据库、表和保存的程序。 
> * `FILE权限` 使用户可以使用LOAD DATA INFILE和SELECT ... INTO OUTFILE语句读或写服务器上的文件，任何被授予FILE权限的用户都能读或写MySQL服务器上的任何文件（说明用户可以读任何数据库目录下的文件，因为服务器可以访问这些文件）。

#### 授予权限

> 两种方式：
>
> * 把角色赋予用户给用户授权 
> * 直接给用户授权
>
> 授权命令的语法
>
> ```mysql
> #该权限如果发现没有该用户，则会直接新建一个用户。
> GRANT 权限1,权限2,…权限n ON 数据库名称.表名称 TO 用户名@用户地址 [IDENTIFIED BY ‘密码口令]  [WITH GRANT OPTION];
> ```

例：

给li4用户用本地命令行方式，授予zfpdb这个库下的所有表的插删改查的权限。

```mysql
GRANT SELECT,INSERT,DELETE,UPDATE ON zfpdb.* TO li4@localhost ;
```

授予通过网络方式登录的joe用户 ，对所有库所有表的全部权限，密码设为123。注意这里==唯独不包括grant的权限。==

```mysql
GRANT ALL PRIVILEGES ON *.* TO joe@'%' IDENTIFIED BY '123';		#此时joe还没有给别人赋权的能力。
```

> ```mysql
> GRANT ALL PRIVILEGES ON *.* TO joe@'%' IDENTIFIED BY '123' WITH GRANT OPTION;		#此时joe还没有给别人赋权的能力。
> ```
>
> 

> 相关术语：
>
> ==横向的分组==，就是指用户可以接触到的数据的范围，比如可以看到哪些表的数据；
> ==纵向的分组==，就是指用户对接触到的数据能访问到什么程度，比如能看、能改，甚至是删除。

#### 查看权限

* 查看当前用户权限

```mysql
SHOW GRANTS;
# 或
SHOW GRANTS FOR CURRENT_USER;
# 或
SHOW GRANTS FOR CURRENT_USER();
```

* 查看某用户的全局权限

```mysql
SHOW GRANTS FOR 'user'@'主机地址' ;
```

#### 收回权限

> 注意： ==须用户重新登录后才能生效==
>
> 使用REVOKE收回权限之后，用户账户的记录将从db、host、tables_priv和columns_priv表中删除
>
> 语法：
>
> ```mysql
> REVOKE 权限1,权限2,…权限n ON 数据库名称.表名称 FROM 用户名@用户地址;
> ```

例：

```mysql
#收回全库全表的所有权限
REVOKE ALL PRIVILEGES ON *.* FROM joe@'%';

#收回mysql库下的所有表的插删改查权限
REVOKE SELECT,INSERT,UPDATE,DELETE ON mysql.* FROM joe@localhost;
```

> 注：root用户不是一开始就有所有权限。
>
> ![1697869574295](MySQL.assets/1697869574295.png)
>
> ```mysql
> #root用户要想撤回别的用户权限先执行
> GRANT SYSTEM_USER on *.* to 'root'@'%';
> ```

### 权限表

> MySQL服务器通过权限表来控制用户对数据库的访问，权限表存放再`mysql数据库`中。
>
> ==在MySQL启动时，服务器会将这些数据库表中权限信息的内容读入内存。==

| 表名             | 描述                           |
| ---------------- | ------------------------------ |
| user             | 用户账号及权限信息             |
| global_grants    | 动态全局授权                   |
| db               | 数据库层级的权限               |
| tables_priv      | 表层级的权限                   |
| columns_priv     | 列层级的权限                   |
| procs_priv       | 存储的过程和函数权限           |
| proxics_priv     | 代理用户的权限                 |
| default_roles    | 账号连接并认证后默认授予的角色 |
| role_edges       | 角色子图的边界                 |
| password_history | 密码更改信息                   |

#### user表

> 详情见：[<font color="violet">第03章_用户与权限管理.pdf</font>](./相关资料1/第03章_用户与权限管理.pdf)
>
> Host、User列是联合主键
>
> `authentication_string`列用于保存密码，
>
> MySQL5.7及之后是叫authentication_string，且加密方式为`SHA1`
> 之前用于保存密码的列叫password，加密方式为`SHA2`

![1697871477304](MySQL.assets/1697871477304.png)

#### db表

> 数据库级的权限
>
> Host、Db、User为联合主键

![1697872460667](MySQL.assets/1697872460667.png)

#### tables_priv表

> 表级的权限
>
> Host、Db、User、Table_name为联合主键

![1697872724722](MySQL.assets/1697872724722.png)

#### columns_priv表

> 列级权限
>
> Host、Db、User、Table_name、Column_name为联合主键

![1697872854326](MySQL.assets/1697872854326.png)

#### procs_priv表

> 存储过程和存储函数设置操作的权限
>
> Host、Db、User、Routine_name、Routine_type为联合主键

![1697873008137](MySQL.assets/1697873008137.png)

### 访问控制

![1697874938365](MySQL.assets/1697874938365.png)

### 角色管理（MySQL8）

![1697875053267](MySQL.assets/1697875053267.png)

#### 创建角色

> 语法：
>
> ```mysql
> #如果 host_name省略，默认为%
> CREATE ROLE 'role_name'[@'host_name'] [,'role_name'[@'host_name']]... 
> ```
>
> 例
>
> ```mysql
> #创建一个经理的角色
> CREATE ROLE 'manager'@'localhost';
> ```

#### 给角色赋予权限

> 语法：
>
> ```mysql
> GRANT privileges ON table_name TO 'role_name'[@'host_name'];
> #privileges代表权限的名称，多个权限以逗号隔开。
> SHOW PRIVILEGES\G;			#查询权限名称
> ```
>
> 例：
>
> ```mysql
> #经理角色授予商品信息表、盘点表和应付账款表的只读权限
> GRANT SELECT ON demo.settlement TO 'manager';
> GRANT SELECT ON demo.goodsmaster TO 'manager';
> GRANT SELECT ON demo.invcount TO 'manager';
> ```

#### 查看角色权限

> 只要你创建了一个角色，系统就会自动给你一个“ `USAGE` ”权限，意思是==连接登录数据库的权限==。
>
> ```mysql
> mysql> SHOW GRANTS FOR 'manager';
> +-------------------------------------------------------+
> | Grants for manager@% |
> +-------------------------------------------------------+
> | GRANT USAGE ON *.* TO `manager`@`%` |
> | GRANT SELECT ON `demo`.`goodsmaster` TO `manager`@`%` |
> | GRANT SELECT ON `demo`.`invcount` TO `manager`@`%` |
> | GRANT SELECT ON `demo`.`settlement` TO `manager`@`%` |
> +-------------------------------------------------------+
> ```

#### 回收角色的权限

> 语法：
>
> ```mysql
> REVOKE privileges ON tablename FROM 'rolename';
> ```
>
> 例：
>
> ```mysql
> REVOKE INSERT, UPDATE, DELETE ON school.* FROM 'school_write';
> SHOW GRANTS FOR 'school_write';		#查看该角色现有的权限
> ```

#### 删除角色

> 注意， ==如果你删除了角色，那么用户也就失去了通过这个角色所获得的所有权限==。
>
> 语法：
>
> ```mysql
> DROP ROLE role [,role2]...
> ```
>
> 例：
>
> ```mysql
> DROP ROLE 'school_read';
> ```

#### 给用户赋予角色

> 语法：
>
> ```mysql
> GRANT role [,role2,...] TO user [,user2,...];
> ```
>
> 例：
>
> ```mysql
> GRANT 'school_read' TO 'kangshifu'@'localhost';		#给kangshifu用户添加角色school_read权限
> SHOW GRANTS FOR 'kangshifu'@'localhost';		#查看是否添加成功
> ```
>
> ```mysql
> SELECT CURRENT_ROLE();	#使用kangshifu用户登录，然后查询当前角色，如果角色未激活，结果将显示NONE。
> ```
>
> ![1697879846037](MySQL.assets/1697879846037.png)

#### 激活角色

> **方式1：使用set default role 命令激活角色**
>
> ```mysql
> #例：
> SET DEFAULT ROLE ALL TO 'kangshifu'@'localhost';
> #例：使用 SET DEFAULT ROLE 为下面4个用户默认激活所有已拥有的角色如下
> SET DEFAULT ROLE ALL TO
> 'dev1'@'localhost',
> 'read_user1'@'localhost',
> 'read_user2'@'localhost',
> 'rw_user1'@'localhost';
> ```
>
> **方式2：将activate_all_roles_on_login设置为ON**
>
> ```mysql
> #默认情况
> mysql> show variables like 'activate_all_roles_on_login';
> +-----------------------------+-------+
> | Variable_name | Value |
> +-----------------------------+-------+
> | activate_all_roles_on_login | OFF |
> +-----------------------------+-------+
> 1 row in set (0.00 sec)
> 
> #对 所有角色永久激活 。运行这条语句之后，用户才真正拥有了赋予角色的所有权限。
> SET GLOBAL activate_all_roles_on_login=ON;
> ```

#### 撤销用户的角色

> 语法：
>
> ```mysql
> REVOKE role FROM user;
> ```
>
> 例：
>
> ```mysql
> #撤销kangshifu用户的school_read角色
> REVOKE 'school_read' FROM 'kangshifu'@'localhost';
> #查看kangshifu用户的角色信息
> SHOW GRANTS FOR 'kangshifu'@'localhost';
> ```

#### 强制角色

> 强制角色是给每个创建账户的默认角色，不需要手动设置。强制角色无法被`REVOKE`或者`DROP`

**方式一：服务启动前设置**

```ini
[mysqld]
mandatory_roles='role1,role2@localhost,r3@%.atguigu.com'
```

**方式二：运行时设置**

```mysql
SET PERSIST mandatory_roles = 'role1,role2@localhost,r3@%.example.com'; #系统重启后仍然有效
SET GLOBAL mandatory_roles = 'role1,role2@localhost,r3@%.example.com'; #系统重启后失效
```

## 逻辑架构

### 服务器处理请求

#### 概述

> 概览
>
> ![1698054336480](MySQL.assets/1698054336480.png)
>
> MySQL5.7适用下图
>
> ![1698054478900](MySQL.assets/1698054478900.png)

#### 连接层

>  MySQL 服务器对 `TCP` 传输过来的账号密码做身份认证、权限获取。
>
> 用户名密码认证通过，==会从权限表查出账号拥有的权限与连接关联==，之后的权限判断逻辑，都将依赖于此时读到的权限。
>
> 每一个连接从线程池中获取线程，省去了创建和销毁线程的开销。

#### 服务层

> * **SQL Interface: SQL接口**：
>   接收用户的SQL命令，并且返回用户需要查询的结果。
> * **Parser: 解析器**
>   * 对 SQL 语句进行语法分析、语义分析。并为其创建`语法树`，并根据数据字典丰富查询语法树。
>   * 会 验证该客户端是否具有执行该查询的权限 。
>   * 创建好语法树后，MySQL还会对SQl查询进行语法上的优化，进行查询重写。
> * **Optimizer: 查询优化器**
>   * 确定 SQL 语句的执行路径，生成一个`执行计划 `。
>     表明应该 使用哪些索引 进行查询（全表检索还是使用索引检索），表之间的连接顺序如何。
>     使用“ 选取-投影-连接 ”策略进行查询：
>    		 	`WHERE`进行`选取`，过滤行
>    		 	`SELECT`进行`投影`，过滤列
>    		 	将上述两者进行连接。
> * **Caches & Buffers： 查询缓存组件**
>   * 这个缓存机制是由一系列小缓存组成的。比如表缓存，记录缓存，key缓存，权限缓存等 。
>   * 这个查询缓存可以在==不同客户端之间共享==。
>   * 从MySQL 5.7.20开始，不推荐使用查询缓存，并==在MySQL 8.0中删除==。

#### 存储层

> ==真正的负责了MySQL中数据的存储和提取==
>
> 查询MySQL支持的引擎
>
> ```mysql
> SHOW ENGINES;
> ```
>
> ![1698055764627](MySQL.assets/1698055764627.png)

查看数据存储的目录

```mysql
SHOW VARIABLES LIKE '%datadir%';
```

![1698055958915](MySQL.assets/1698055958915.png)

### SQL执行流程

> ![1698056089977](MySQL.assets/1698056089977.png)
>
> 注：查询缓存这一步在MySQL中已经被砍，因为能用的前提是SQL语句一模一样
>
> ![1698056214577](MySQL.assets/1698056214577.png)
>
> 物理查询优化：通过`索引`和`表连接方式`等技术进行优化。
> 逻辑查询优化：通过SQL`等价变换`提升查询效率，即换一种查询写法执行效率可能更高。

###  MySQL执行时间分析

> 注：有些图形化界面可能较难看出执行时间，因为其一条语句可能涉及多个参数的设置。

#### 确认profiling是否开启

```mysql
SELECT @@profiling;
#或
SHOW VARIABLES LIKE 'profiling';
```

![1698068557835](MySQL.assets/1698068557835.png)

![1698068563478](MySQL.assets/1698068563478.png)

```mysql
SET profiling = 1;	#打开profiling
```

之后可以查看当前会话中任意SQL的执行情况。

#### 查看profiles

查看当前会话所产生的所有 profiles：

```mysql
SHOW PROFILES; # 显示最近的几次查询
```

![1698068939483](MySQL.assets/1698068939483.png)

#### 查看profile

```mysql
SHOW PROFILE;	#查看最近一次执行情况
SHOW PROFILE FOR QUERY 1;		#指定查询哪条语句的执行情况，其中1为上述表中的Query_ID字段中的值
SHOW PROFILE CPU, BLOCK IO FOR QUERY 1;		#查看更详细的执行情况
```

![1698069620556](MySQL.assets/1698069620556.png)

![1698069631324](MySQL.assets/1698069631324.png)



### 数据库缓冲池（buffer pool）

> 注：主要介绍的是InnoDB
>
> 一个数据页：16KB
>
> ![1698073460162](MySQL.assets/1698073460162.png)
>
> 缓存在数据库中的结构和作用：
>
> ![1698073649410](MySQL.assets/1698073649410.png)

#### 查看缓冲池大小

```mysql
#查看缓冲池的大小
SHOW VARIABLES LIKE 'innodb_buffer_pool_size';
```

![1698073888067](MySQL.assets/1698073888067.png)

此时的缓冲池大小为：134217728/1024/1024=128MB

#### 设置缓冲池大小

```mysql
SET GLOBAL innodb_buffer_pool_size = 268435456;
```

![1698074003818](MySQL.assets/1698074003818.png)

或者修改配置文件my.ini

```ini
[server]
innodb_buffer_pool_size = 268435456
```

#### 多个Buffer Pool实例

> 注：每个实例的大小为`innodb_buffer_pool_size`/`innodb_buffer_pool_instances`
>
> 注：并不是Buffer Poot实例创建的越多越好，==分别管理各个Buffer Pool也是需要性能开销的==。
> InnoDB规定：当`innodb_buffer_pool_size`的值小于1G的时候设置多个实例是无效的，InnoDB会默认`innodb_buffer_pool_instances`的值修改为1。而我们鼓励在Buffer Pool大于或等于1G的时候设置多个Buffer Pool实例。

配置文件my.ini

```ini
[server]
innodb_buffer_pool_instances = 2
```

查看缓冲池个数：

```mysql
SHOW VARIABLES LIKE 'innodb_buffer_pool_instances';
```

![1698074272712](MySQL.assets/1698074272712.png)

#### Buffer Pool更新流程

![1698074387782](MySQL.assets/1698074387782.png)

如果想想要回滚到更新之前的版本

用`Redo Log` & `Undo Log`



## 存储引擎

### 查看存储引擎

```mysql
#查看mysql提供的引擎
SHOW ENGINES;

#查看默认的存储引擎
SHOW VARIABLES LIKE '%storage_engine%';
#或
SELECT @@default_storage_engine;	#5.5之后默认InnoDB
```

![1698075005372](MySQL.assets/1698075005372.png)

![1698075113557](MySQL.assets/1698075113557.png)

### 修改默认的存储引擎

```mysql
SET DEFAULT_STORAGE_ENGINE=MyISAM;
```

或者修改 my.cnf 文件：

```properties
default-storage-engine=MyISAM

# 重启服务
systemctl restart mysqld.service
```



### 设置表的存储引擎

#### 创建表时指定存储引擎

```mysql
CREATE TABLE 表名(
建表语句;
) ENGINE = 存储引擎名称;
```

#### 修改表的存储引擎

```mysql
ALTER TABLE 表名 ENGINE = 存储引擎名称;

#例：
ALTER TABLE engine_demo_table ENGINE = InnoDB;
```



### 引擎介绍

#### InnoDB 引擎

> 具备外键支持功能的事务存储引擎

> * 大于等于5.5之后，默认采用InnoDB引擎 。
> * InnoDB是MySQL的==默认事务型引擎==
> * InnoDB是 为处理巨大数据量的最大性能设计 
> * InnoDB不仅缓存索引还要缓存真实数据， 对内存要求较高 ，而且内存大小对性能有决定性的影响。

#### MyISAM 引擎

> 主要的非事务处理存储引擎

> * MyISAM 不支持事务、行级锁、外键 ，有一个毫无疑问的缺陷就是崩溃后无法安全恢复。
> * 5.5之前默认的存储引擎
> * 针对数据统计有额外的常数存储。故而 count(*) 的查询效率很高
> * 应用场景：只读应用或者以读为主的业务

#### Archive 引擎

> 用于数据存档

> * archive是归档的意思，仅仅支持插入和查询两种功能（行被插入后不能修改）。
> * 在MySQL5.5以后支持索引功能
> * 拥有很好的压缩机制，使用`zlib`压缩库，在记录请求的时候实时的进行压缩经常被用来作为仓库使用。
> * 创建ARCHIVE表时，存储引擎会创建名称以表名开头的文件。数据文件的扩展名为`.ARZ`。
> * 同样数据量下，Archive表比MyISAM表要小大约75%，比支持事务处理的InnoDB表小大约83%。
> * ARCHIVE存储引擎采用了行级锁。该ARCHIVE引擎支持 AUTO_INCREMENT列属性。AUTO_INCREMENT列可以具有唯一索引或非唯一索引。尝试在任何其他列上创建索引会导致错误。
> * Archive表适合日志和数据采集（档案）类应用;适合存储大量的独立的作为历史记录的数据。拥有很高的插入速度，但是对查询的支持较差。

> **下表展示了ARCHIVE 存储引擎功能**
>
> | **特征**                                                | **支持**     |
> | ------------------------------------------------------- | ------------ |
> | B树索引                                                 | 不支持       |
> | 备份/时间点恢复  （在服务器中实现，而不是在存储引擎中） | 支持         |
> | 集群数据库支持                                          | 不支持       |
> | 聚集索引                                                | 不支持       |
> | 压缩数据                                                | 支持         |
> | 数据缓存                                                | 不支持       |
> | 加密数据（加密功能在服务器中实现）                      | 支持         |
> | 外键支持                                                | 不支持       |
> | 全文检索索引                                            | 不支持       |
> | 地理空间数据类型支持                                    | 支持         |
> | 地理空间索引支持                                        | 不支持       |
> | 哈希索引                                                | 不支持       |
> | 索引缓存                                                | 不支持       |
> | 锁粒度                                                  | 行锁         |
> | MVCC                                                    | 不支持       |
> | 存储限制                                                | 没有任何限制 |
> | 交易                                                    | 不支持       |
> | 更新数据字典的统计信息                                  | 支持         |

#### Blackhole 引擎

> 丢弃写操作，读操作会返回空内容

> 但服务器会记录Blackhole表的日志，所以可以用于复制数据到备库，或者简单地记录到日志。但这种应用方式会碰到很多问题，因此并不推荐。

#### CSV引擎

> 存储数据时，以逗号分隔各个数据项

> 创建CSV表还会创建相应的`元文件`，用于`存储表的状态`和`表中存在的行数`。此文件的名称与表的名称相同，后缀为 CSM 。如图所示
>
> ![1698076994432](MySQL.assets/1698076994432.png)

#### Memory 引擎

> 置于内存的表。
>
> 响应速度很快 ，但是当mysqld守护进程崩溃的时候 数据会丢失 。另外，要求存储的数据是数据长度不变的格式，比如，Blob和Text类型的数据不可用(长度不固定的)。

> * Memory同时 支持哈希（HASH）索引 和 B+树索引 。
> * Memory表至少比MyISAM表要 快一个数量级 。
> * MEMORY 表的大小是受到限制 的。表的大小主要取决于两个参数，分别是`max_rows`和`max_heap_table_size`。其中，`max_rows`可以在创建表时指定；`max_heap_table_size`的大小默认为16MB，可以按需要进行扩大。
> * 数据文件与索引文件分开存储。
> * 缺点：其数据易丢失，生命周期短。

#### Federated 引擎

> Federated引擎是访问其他MySQL服务器的一个==代理== ，尽管该引擎看起来提供了一种很好的跨服务器的灵活性 ，但也经常带来问题，因此 ==默认是禁用的== 。

#### Merge引擎

> 管理多个MyISAM表构成的表集合

#### NDB引擎

> MySQL集群专用存储引擎
>
> 也叫做 NDB Cluster 存储引擎，主要用于`MySQL Cluster`分布式集群环境，类似于 Oracle 的 RAC 集群。

#### 引擎对比

| **特点**       | **MyISAM**                                                | **InnoDB**                                                   | **MEMORY** | **MERGE** | **NDB** |
| -------------- | --------------------------------------------------------- | ------------------------------------------------------------ | ---------- | --------- | ------- |
| 存储限制       | 有                                                        | 64TB                                                         | 有         | 没有      | 有      |
| 事务安全       |                                                           | 支持                                                         |            |           |         |
| 锁机制         | 表锁，即使操作一条记录也会锁住整个 表，不适合高并发的操作 | 行锁，操作时只锁某一行，不对其它行有影响，适合高并发的操作   | 表锁       | 表锁      | 行锁    |
| B树索引        | 支持                                                      | 支持                                                         | 支持       | 支持      | 支持    |
| 哈希索引       |                                                           |                                                              | 支持       |           | 支持    |
| 全文索引       | 支持                                                      |                                                              |            |           |         |
| 集群索引       |                                                           | 支持                                                         |            |           |         |
| 数据缓存       |                                                           | 支持                                                         | 支持       |           | 支持    |
| 索引缓存       | 只缓存索引，不缓存真实数据                                | 不仅缓存索引还要缓存真实数据，对内存要求较高，而且内存大小对性能有决定性的影响 | 支持       | 支持      | 支持    |
| 数据可压缩     | 支持                                                      |                                                              |            |           |         |
| 空间使用       | 低                                                        | 高                                                           | N/A        | 低        | 低      |
| 内存使用       | 低                                                        | 高                                                           | 中等       | 低        | 高      |
| 批量插入的速度 | 高                                                        | 低                                                           | 高         | 高        | 高      |
| 支持外键       |                                                           | 支持                                                         |            |           |         |

#### MyISAM和InnoDB

| 对比项         | **MyISAM**                                               | **InnoDB**                                                   |
| -------------- | -------------------------------------------------------- | ------------------------------------------------------------ |
| 外键           | 不支持                                                   | 支持                                                         |
| 事务           | 不支持                                                   | 支持                                                         |
| 行表锁         | 表锁，即使操作一条记录也会锁住整个表，不适合高并发的操作 | 行锁，操作时只锁某一行，不对其它行有影响，适合高并发的操作   |
| 缓存           | 只缓存索引，不缓存真实数据                               | 不仅缓存索引还要缓存真实数据，对内存要求较高，而且内存大小对性能有决定性的影响 |
| 自带系统表使用 | Y                                                        | N                                                            |
| 关注点         | 性能：节省资源、消耗少、简单业务                         | 事务：并发写、事务、更大资源                                 |
| 默认安装       | Y                                                        | Y                                                            |
| 默认使用       | N                                                        | Y                                                            |



## 索引的数据结构

> 索引可以提高查询的速度，但是会影响插入记录的速度。这种情况下，最好的办法是先删除表中的索引，然后插入数据，插入完成后再创建索引。

### 索引结构的设计

> 索引的社交
>
> ![1698078690911](MySQL.assets/1698078690911.png)
>
> ![1698078725987](MySQL.assets/1698078725987.png)
>
> * `record_type` ：记录头信息的一项属性，表示记录的类型。
>   * 0 表示普通记录
>   * 1 目录项记录
>   * 2 表示最小记录
>   * 3 表示最大记录
> * `next_record` ：记录头信息的一项属性，表示下一条地址相对于本条记录的地址偏移量
>
> 把一些记录放到页里的示意图就是：
>
> ![1698078912024](MySQL.assets/1698078912024.png)
>
> ==注意指针==：页内单向，页间双向

#### 目录项纪录的页

![1698079189975](MySQL.assets/1698079189975.png)

#### 多个目录项纪录的页

![1698079282008](MySQL.assets/1698079282008.png)

#### 目录项记录页的目录页

![1698079330592](MySQL.assets/1698079330592.png)

#### 抽象为B+Tree

![1698079497550](MySQL.assets/1698079497550.png)



### 概念

#### 聚簇索引

也可以叫做主键索引

> * MyISAM并不支持聚簇索引
> * 由于数据物理存储排序方式只能有一种，所以每个MySQL的表只能有一个聚簇索引。一般情况下就是该表的主键。
> * 如果没有定义主键，Innodb会选择非空的唯一索引代替。如果没有这样的索引，Innodb会隐式的定义一个主键来作为聚簇索引。
> * 为了充分利用聚簇索引的聚簇的特性，所以innodb表的主键列尽量选用有序的顺序id，而不建议用无序的id,比如UUID、MD5、HASH、字符串列作为主键无法保证数据的顺序增长。
>
> 上述索引结构的设计就是一种聚簇索引。

#### 二级索引

又叫辅助索引、非聚簇索引

> ![1698081631028](MySQL.assets/1698081631028.png)
>
> 找到叶子结点内一条记录的主键后，还要去`聚簇索引`再找完整的一行记录，这个过程成为`回表`。
>
> 注意：二级索引的叶子结点，只有主键和索引键
>
> ![1698081852744](MySQL.assets/1698081852744.png)

#### 联合索引

>  以c2和c3列等多个列的大小为排序规则建立的B+树称为`联合索引`
>
> 本质上也是一个二级索引。

# 附录

## 易忘命令

### 查阅

> 查看某个库的所有表格
>
> ```mysql
> show tables from 数据库名;
> ```
>
> 查阅表结构
>
> ```mysql
> DESCRIBE employees;
> 或
> DESC employees;
> 
> mysql> DESC employees;
> +----------------+-------------+------+-----+---------+-------+
> | Field          | Type        | Null | Key | Default | Extra |
> +----------------+-------------+------+-----+---------+-------+
> | employee_id    | int(6)      | NO   | PRI | 0       |       |
> | first_name     | varchar(20) | YES  |     | NULL    |       |
> | last_name      | varchar(25) | NO   |     | NULL    |       |
> | email          | varchar(25) | NO   | UNI | NULL    |       |
> | phone_number   | varchar(20) | YES  |     | NULL    |       |
> | hire_date      | date        | NO   |     | NULL    |       |
> | job_id         | varchar(10) | NO   | MUL | NULL    |       |
> | salary         | double(8,2) | YES  |     | NULL    |       |
> | commission_pct | double(2,2) | YES  |     | NULL    |       |
> | manager_id     | int(6)      | YES  | MUL | NULL    |       |
> | department_id  | int(4)      | YES  | MUL | NULL    |       |
> +----------------+-------------+------+-----+---------+-------+
> 11 rows in set (0.00 sec)
> ```
>

### 不用登录进去直接执行SQL

```shell
#不用登录进去直接执行SQL
mysql -uroot -p -hlocalhost -P3306 mysql -e "select host,user from user"
```

详见[<font color="violet">第03章_用户与权限管理.pdf</font>](./相关资料1/第03章_用户与权限管理.pdf)



### 数据导入命令

> 注：只能在命令行中使用
>
> ```mysql
> mysql> source D:\test.sql
> ```
>
> 



## SQL在不同数据库的不同

### 分页

> ==LIMIT 可以使用在MySQL、PGSQL、MariaDB、SQLite 等数据库中使用，表示分页。==
>
> ==不能使用在SQL Server、DB2、Oracle！==
>
> * 如果是 SQL Server 和 Access，需要使用 `TOP` 关键字，比如：
>
>   ```sql
>   SELECT TOP 5 name, hp_max FROM heros ORDER BY hp_max DESC
>   ```
>
> * 如果是 DB2，使用 `FETCH FIRST 5 ROWS ONLY `这样的关键字：
>
>   ```sql
>   SELECT name, hp_max FROM heros ORDER BY hp_max DESC FETCH FIRST 5 ROWS ONLY
>   ```
>
> * 如果是 Oracle，你需要基于 `ROWNUM` 来统计行数：
>
>   ```sql
>   SELECT rownum,last_name,salary FROM employees WHERE rownum < 5 ORDER BY salary DESC;
>   ```
>
>   这条语句是先取出来前 5 条数据行，然后再按照 hp_max 从高到低的顺序进行排序。
>
>   ```sql
>   #这样才正确。
>   SELECT rownum, last_name,salary
>   FROM (
>   	SELECT last_name,salary
>   	FROM employees
>   	ORDER BY salary DESC)
>   WHERE rownum < 10;
>   ```
>
>   

### 多表查询

> mysql不支持92语法的外连接
>
> ```sql
> #SQL92语法实现外连接：使用 +  ----------MySQL不支持SQL92语法中外连接的写法！
> #不支持：
> SELECT employee_id,department_name
> FROM employees e,departments d
> WHERE e.`department_id` = d.department_id(+);
> 
> 
> ```
>
>
> mysql不支持 FULL OUTER JOIN
>
> ```mysql
> #满外连接
> SELECT employee_id,department_name
> FROM employees e LEFT JOIN departments d
> ON e.`department_id` = d.`department_id`
> UNION ALL
> SELECT employee_id,department_name
> FROM employees e RIGHT JOIN departments d
> ON e.`department_id` = d.`department_id`
> WHERE e.`department_id` IS NULL;
> ```
>
> 

### 聚合函数方面

> ```mysql
> #MySQL中聚合函数是不能嵌套使用的。      		但是Oracle中是支持的
> SELECT MIN(AVG(salary)) FROM employees GROUP BY department_id;
> ```
>
> 

### CHECK约束

> Oracle一直支持。
> MySQL5.7x不支持，MySQL8.0后才开始支持。

### 游标

> 声明游标
>
> ```mysql
> #MySQL，SQL Server，DB2 和 MariaDB
> DECLARE cursor_name CURSOR FOR select_statement;
> 
> #Oracle 或者 PostgreSQL
> DECLARE cursor_name CURSOR IS select_statement;
> ```



## 常用SQL技巧

>对于嵌套聚合函数的情况，例如  `MIN(AVG)`
>
>```mysql
>#8.查询平均工资最低的部门信息
>#方式1：
>SELECT *
>FROM departments
>WHERE department_id = (
>    SELECT department_id
>    FROM employees
>    GROUP BY department_id
>    HAVING AVG(salary) = (
>        SELECT MIN(avg_sal)
>        FROM (
>                 SELECT AVG(salary) avg_sal
>                 FROM employees
>                 GROUP BY department_id
>             ) t_dept_avg_sal
>    )
>);
>
>#方式2：
>SELECT *
>FROM departments
>WHERE department_id = (
>    SELECT department_id
>    FROM employees
>    GROUP BY department_id
>    HAVING AVG(salary) <= ALL (
>        SELECT AVG(salary)
>        FROM employees
>        GROUP BY department_id
>    )
>);
>
>#方式3： LIMIT
>SELECT *
>FROM departments
>WHERE department_id = (
>    SELECT department_id
>    FROM employees
>    GROUP BY department_id
>    HAVING AVG(salary) = (
>        SELECT AVG(salary) avg_sal
>        FROM employees
>        GROUP BY department_id
>        ORDER BY avg_sal ASC
>        LIMIT 1
>    )
>);
>
>#方式4：
>SELECT d.*
>FROM departments d,
>     (
>         SELECT department_id, AVG(salary) avg_sal
>         FROM employees
>         GROUP BY department_id
>         ORDER BY avg_sal ASC
>         LIMIT 0,1
>     ) t_dept_avg_sal
>WHERE d.`department_id` = t_dept_avg_sal.department_id
>```
>
>

## MySQL8新特性

### DDL的原子化

> mysql8中DDL操作==要么全部成功要么回滚==
>
> ```mysql
> CREATE TABLE book1
> (
>     book_id INT,
>     book_name VARCHAR (255)
> );
> 
> DROP TABLE book1,book2;  #book2表不存在，会删除失败。所以该语句会报错
> #mysql5.x   会删除book1
> #mysql8      不会删除book1
> ```
>
> 

### 计算列

> 每次插入其他列值，mysql会自动补充计算列字段的值
>
> 该字段会实时更新
>
> ```mysql
> CREATE TABLE test1
> (
>     a INT,
>     b INT,
>     c INT GENERATED ALWAYS AS (a + b) VIRTUAL #字段c即为计算列
> );
> 
> INSERT INTO test1(a, b)
> VALUES (10, 20);		#会计算出该行对应的c字段的值为 30
> 
> SELECT *
> FROM test1;
> 
> UPDATE test1
> SET a = 100;
> ```

### 数据类型

#### 整型

> ==从MySQL 8.0.17开始，整数数据类型不推荐使用显示宽度属性==。
>
> 如`INT(5)`，我们不推荐这样写。
>
> ==显示宽度与类型可以存储的值范围无关==

#### 浮点型

> ==从MySQL 8.0.17开始，FLOAT(M,D) 和DOUBLE(M,D)用法在官方文档中已经明确不推荐使用==

#### 日期与时间类型

> 从MySQL5.5.27开始，2位格式的YEAR已经不推荐使用。
>
> YEAR默认格式就是“YYYY”，没必要写成YEAR(4)，
>
> 从MySQL 8.0.19开始，不推荐使用指定显示宽度的YEAR(4)数据类型。

#### 字符

> MySQL4.0版本以下，varchar(20)：指的是20字节
> MySQL5.0版本以上，varchar(20)：指的是20字符。

### 约束

#### 自增列：AUTO_INCREMENT

> MySQL 8.0新特性—自增变量的持久化
>
> -  在MySQL 5.7系统中，对于自增主键的分配规则，是由InnoDB数据字典内部一个==计数器==来决定的，而该计数器只在==内存中维护==，并不会持久化到磁盘中。当数据库重启时，该计数器会被初始化。
> - MySQL 8.0将自增主键的计数器持久化到==重做日志==中。每次计数器发生改变，都会将其写入重做日志中。如果数据库重启，InnoDB会根据重做日志中的信息来初始化计数器的内存值。
>
> 最明显的区别就是重启后，删除现在最大的id那行数据后，再没有再次插入的情况下，重启系统。
> mysql5.7会从现有表数据的最大id计数
> mysql8.0会从删之前的最大id计数

#### CHECK约束

> MySQL5.7不支持。
> 	MySQL5.7 可以使用check约束，但check约束对数据验证没有任何作用。添加数据时，没有任何错误或警告。
>
> MySQL 8.0中可以使用check约束了

#### 全局变量持久化

> 从MySQL8.0开始支持全局变量的持久化。
>
> ```mysql
> #例
> SET PERSIST global max_connections = 1000;
> ```

## SQL大小写规范

> windows系统默认大小写不敏感 ，但是 linux系统是大小写敏感的 。
>
> 详见：[<font color="violet">第01章_Linux下MySQL的安装与使用.pdf</font>](./相关资料1/第01章_Linux下MySQL的安装与使用.pdf)
>
> MySQL在Linux下数据库名、表名、列名、别名大小写规则是这样的：
> 1、数据库名、表名、表的别名、变量名是严格区分大小写的；
> 2、关键字、函数名称在 SQL 中不区分大小写；
> 3、列名（或字段名）与列的别名（或字段别名）在所有的情况下均是忽略大小写的；

## 宽松模式与严格模式

> 详见：[<font color="violet">第01章_Linux下MySQL的安装与使用.pdf</font>](./相关资料1/第01章_Linux下MySQL的安装与使用.pdf)
>
> 常见案例：
>
> 向char(10)中插入数据  `1234567890abc`
> 严格模式会报错。
> 宽松模式会插入，插入的结果为	`1234567890`
>
> 一般会选严格模式。
> MySQL5.7之后默认为严格模式

## MySQL字符集

> 详见：[<font color="violet">第01章_Linux下MySQL的安装与使用.pdf</font>](./相关资料1/第01章_Linux下MySQL的安装与使用.pdf)
>
> MySQL8.0之后才是utf8mb4

## MySQL5.7中的Cache

> 注：该选项已被MySQL8移除，不推荐使用。
>
> ```properties
> #query_cache_type有3个值，0代表关闭查询缓存OFF，1代表开启ON，2（DEMAND）
> query_cache_type=2
> #值为2时，代表当SQL语句中有SQL_CACHE关键词时才缓存。
> ```
>
> ```mysql
> #此时只有当使用SQL_CACHE关键词时才走缓存。
> SELECT SQL_CACHE * FROM test WHERE ID=5;
> ```
>
> ```mysql
> #查看当前mysql实例是否开启缓存机制。
> SHOW GLOBAL VARIABLES LIKE '%query_cache_type%';
> ```
>
> ![1698064473076](MySQL.assets/1698064473076.png)
>
> ```mysql
> #监控查询缓存的命中率
> SHOW STATUS LIKE '%Qcache';
> ```
>
> ![1698064594771](MySQL.assets/1698064594771.png)
>
> `Qcache_free_blocks`：表示查询缓存中还有多少剩余的blocks，如果该值显示较大，则说明查询缓存中==内存碎片过多==了，可在一定的时间进行整理。
>
> `Qcache_free_memory`：查询缓存的内存大小。
>
> `Qcache_hits`：表示有多少条命中缓存。



## Oracle中的SQL执行流程

![1698069880917](MySQL.assets/1698069880917.png)

> * 语法检查：检查 SQL 拼写是否正确。
> * 语义检查：检查 SQL 中的访问对象是否存在。如：列名写错。
> * 权限检查：看用户是否具备访问该数据的权限。
> * 共享池检查：主要的作用是缓存 SQL 语句和该语句的执行计划。
>   * Oracle 首先对 SQL 语句进行 Hash 运算 ，然后根据 Hash 值在库缓存（Library Cache）中查找，如果 存在 SQL 语句的执行计划 ，就直接拿来执行，直接进入“执行器”的环节，这就是`软解析`。
>   * 如果没有找到 SQL 语句和执行计划，Oracle 就需要创建解析树进行解析，生成执行计划，进入“优化器”这个步骤，这就是`硬解析 `。
> * 优化器：优化器中就是要进行硬解析，也就是决定怎么做，比如创建解析树，生成执行计划。
> * 执行器：当有了解析树和执行计划之后，就知道了 SQL 该怎么被执行，这样就可以在执行器中执行语句了。

> 共享池详述
>
> 共享池包括了库缓存，数据字典缓冲区等。
>
> `库缓存区`：主要缓存SQL语句和执行计划。
> `数据字典缓冲区`：存储的是 Oracle 中的对象定义，比如表、视图、索引等对象。当对 SQL 语句进行解析的时候，如果需要相关的数据，会从数据字典缓冲区中提取。
>
> `绑定变量`：在 SQL 语句中使用变量，通过不同的变量取值来改变 SQL 的执行结果。
> 好处：能 提升软解析的可能性 。
> 不足之处在于可能会导致生成的执行计划不够优化，因此是否需要绑定变量还需要视情况而定。
>
> ```mysql
> #例：
> select * from player where player_id = 10001;
> select * from player where player_id = :player_id;	#绑定变量。
> ```
>
> ![1698073328358](MySQL.assets/1698073328358.png)

# 还未补全的内容

> * 窗口函数中的滑动窗口（即Frame子句）
> * 原文件[<font color="violet">第03章_用户与权限管理.pdf</font>](./相关资料1/第03章_用户与权限管理.pdf)，缺少配置文件的使用。

