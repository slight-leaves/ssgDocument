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

## MySQL安装

> 安装详见文档[<font color="violet">第02章_MySQL环境搭建</font>](./相关资料/第02章_MySQL环境搭建.pdf)
>
> MySQL配置文件：在`{数据目录}/my.ini`
>
> 以下是第二次安装不同版本MySQL的过程

### 再次安装MySQL5.7版本的过程

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

### 登录相关命令行

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

### MySQL5.7编码问题

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
>    mysql> SELECT 1 = 1, 1 = '1', 1 = 0, 'a' = 'a', (5 + 3) = (2 + 6), '' = NULL , NULL =
>    NULL;
>    +-------+---------+-------+-----------+-------------------+-----------+-------------+
>    | 1 = 1 | 1 = '1' | 1 = 0 | 'a' = 'a' | (5 + 3) = (2 + 6) | '' = NULL | NULL = NULL |
>    +-------+---------+-------+-----------+-------------------+-----------+-------------+
>   	 | 1 	| 1 	| 0		 | 1 		| 1 			| NULL 		| NULL 	|
>    +-------+---------+-------+-----------+-------------------+-----------+-------------+
>    1 row in set (0.00 sec)
>    ```
>  ```
> 
>  ```
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
> mysql> SELECT 1 <=> NULL, NULL <=> NULL FROM DUAL;
> +------------+---------------+
> | 1 <=> NULL | NULL <=> NULL |
> +------------+---------------+
> |          0 |             1 |
> +------------+---------------+
> 1 row in set (0.00 sec)
> ```
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
> ```mysql
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
> 



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