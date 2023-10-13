INSERT INTO test.student
VALUES (1002, 'Tom');
#字符串、日期时间类型的变量需要使用一对 '' 表示

#10. 查询常数
SELECT 'zfp', 123, employee_id, last_name
FROM zfp.employees;

#实际问题的解决方案：引入IFNULL
SELECT employee_id, salary "月工资", salary * (1 + IFNULL(commission_pct, 0)) * 12 "年工资", commission_pct
FROM zfp.employees;

SELECT 100,
       100 * 1,
       100 * 1.0,
       100 / 1.0,
       100 / 2,
       100 + 2 * 5 / 2,
       100 / 3,
       100 DIV 0 # 分母如果为0，则结果为null
FROM DUAL;


SELECT ABS(-123),       #123
       ABS(32),         #32
       SIGN(-23),       #-1
       SIGN(43),        #1
       PI(),            #3.141593
       CEIL(32.32),     #33
       CEILING(-43.23), #-43
       FLOOR(32.32),    #32
       FLOOR(-43.23),   #-44
       MOD(12, 5),      #2
       12 MOD 5,        #2
       12 % 5           #2
FROM DUAL;

#取随机数
SELECT RAND(), RAND(), RAND(10), RAND(10), RAND(-1), RAND(-1)
FROM DUAL;


SELECT ROUND(123.556),      #124
       ROUND(123.456, 0),   #123
       ROUND(123.456, 1),   #123.5
       ROUND(123.456, 2),   #123.46
       ROUND(123.456, -1),  #120        负数就向小数点前看
       ROUND(153.456, -2)   #200
FROM DUAL;

SELECT TRUNCATE(123.456, 0), TRUNCATE(123.496, 1), TRUNCATE(129.45, -1)
FROM DUAL;


#角度与弧度的互换
SELECT RADIANS(30),
       RADIANS(45),
       RADIANS(60),
       RADIANS(90),
       DEGREES(2 * PI()),
       DEGREES(RADIANS(60))
FROM DUAL;


#三角函数
SELECT SIN(RADIANS(30)), DEGREES(ASIN(1)), TAN(RADIANS(45)), DEGREES(ATAN(1))
FROM DUAL;

#指数和对数
SELECT POW(2, 5), POWER(2, 4), EXP(2)
FROM DUAL;
SELECT LN(EXP(2)), LOG(EXP(2)), LOG10(10), LOG2(4)
FROM DUAL;

#进制间的转换
SELECT BIN(10), HEX(10), OCT(10), CONV(10, 10, 8)
FROM DUAL;


#2. 字符串函数
SELECT ASCII('Abcdfsf'),
       CHAR_LENGTH('hello'),
       CHAR_LENGTH('我们'),
       LENGTH('hello'),
       LENGTH('我们')
FROM DUAL;

# xxx worked for yyy
SELECT CONCAT(emp.last_name, ' worked for ', mgr.last_name) "details"
FROM employees emp
         JOIN employees mgr
WHERE emp.`manager_id` = mgr.employee_id;

SELECT CONCAT_WS('-', 'hello', 'world', 'hello', 'beijing')
FROM DUAL;
#字符串的索引是从1开始的！
SELECT INSERT('helloworld', 2, 3, 'aaaaa'), REPLACE('hello', 'lol', 'mmm')
FROM DUAL;

SELECT UPPER('HelLo'), LOWER('HelLo')
FROM DUAL;

SELECT last_name, salary
FROM employees
WHERE LOWER(last_name) = 'King';    #注mysql大小写不敏感，跟普通SQL有区别

SELECT LEFT('hello', 2), RIGHT('hello', 3), RIGHT('hello', 13)
FROM DUAL;

# LPAD:实现右对齐效果
# RPAD:实现左对齐效果
SELECT employee_id, last_name, LPAD(salary, 10, ' ')
FROM employees;

SELECT CONCAT('---', LTRIM('    h  el  lo   '), '***'),
       TRIM('oo' FROM 'ooheollo')
FROM DUAL;

SELECT REPEAT('hello', 4), LENGTH(SPACE(5)), STRCMP('abc', 'abe')
FROM DUAL;


SELECT SUBSTR('hello', 2, 2), LOCATE('lll', 'hello')
FROM DUAL;

SELECT ELT(2, 'a', 'b', 'c', 'd'),
       FIELD('mm', 'gg', 'jj', 'mm', 'dd', 'mm'),
       FIND_IN_SET('mm', 'gg,mm,jj,dd,mm,gg')
FROM DUAL;

SELECT employee_id, NULLIF(LENGTH(first_name), LENGTH(last_name)) "compare"
FROM employees;



#3. 日期和时间函数
#3.1  获取日期、时间
SELECT CURDATE(),
       CURRENT_DATE(),
       CURTIME(),
       NOW(),
       SYSDATE(),
       UTC_DATE(),
       UTC_TIME()
FROM DUAL;

SELECT CURDATE(), CURDATE() + 0, CURTIME() + 0, NOW() + 0
FROM DUAL;

#3.2 日期与时间戳的转换
SELECT UNIX_TIMESTAMP(),
       UNIX_TIMESTAMP('2021-10-01 12:12:32'),
       FROM_UNIXTIME(1635173853),
       FROM_UNIXTIME(1633061552)
FROM DUAL;

#3.3 获取月份、星期、星期数、天数等函数
SELECT YEAR(CURDATE()),
       MONTH(CURDATE()),
       DAY(CURDATE()),
       HOUR(CURTIME()),
       MINUTE(NOW()),
       SECOND(SYSDATE())
FROM DUAL;


SELECT MONTHNAME('2021-10-26'),
       DAYNAME('2021-10-26'),
       WEEKDAY('2021-10-26'),
       QUARTER(CURDATE()),
       WEEK(CURDATE()),
       DAYOFYEAR(NOW()),
       DAYOFMONTH(NOW()),
       DAYOFWEEK(NOW())
FROM DUAL;

#3.4 日期的操作函数
SELECT EXTRACT(SECOND FROM NOW()),
       EXTRACT(DAY FROM NOW()),
       EXTRACT(HOUR_MINUTE FROM NOW()),
       EXTRACT(QUARTER FROM '2021-05-12')
FROM DUAL;

#3.5 时间和秒钟转换的函数
SELECT
       CURTIME(),
       TIME_TO_SEC(CURTIME()),
       SEC_TO_TIME(83355)
FROM DUAL;

#3.6 计算日期和时间的函数
SELECT NOW(),
       DATE_ADD(NOW(), INTERVAL 1 YEAR),
       DATE_ADD(NOW(), INTERVAL -1 YEAR),
       DATE_SUB(NOW(), INTERVAL 1 YEAR)
FROM DUAL;


SELECT DATE_ADD(NOW(), INTERVAL 1 DAY)                               AS col1,
       DATE_ADD('2021-10-21 23:32:12', INTERVAL 1 SECOND)            AS col2,
       ADDDATE('2021-10-21 23:32:12', INTERVAL 1 SECOND)             AS col3,
       DATE_ADD('2021-10-21 23:32:12', INTERVAL '1_1' MINUTE_SECOND) AS col4,
       DATE_ADD(NOW(), INTERVAL -1 YEAR)                             AS col5, #可以是负数
       DATE_ADD(NOW(), INTERVAL '1_1' YEAR_MONTH)                    AS col6  #需要单引号
FROM DUAL;


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

#3.7 日期的格式化与解析
# 格式化：日期 ---> 字符串
# 解析：  字符串 ----> 日期

#此时我们谈的是日期的显式格式化和解析

#之前，我们接触过隐式的格式化或解析
SELECT *
FROM employees
WHERE hire_date = '1993-01-13';

#格式化：
SELECT DATE_FORMAT(CURDATE(), '%Y-%M-%D'),
       DATE_FORMAT(NOW(), '%Y-%m-%d'),
       TIME_FORMAT(CURTIME(), '%h:%i:%S'),
       DATE_FORMAT(NOW(), '%Y-%M-%D %h:%i:%S %W %w %T %r')
FROM DUAL;

#解析：格式化的逆过程
SELECT STR_TO_DATE('2021-October-25th 11:37:30 Monday 1', '%Y-%M-%D %h:%i:%S %W %w')
FROM DUAL;

SELECT GET_FORMAT(DATE, 'USA')
FROM DUAL;

SELECT CURDATE(), DATE_FORMAT(CURDATE(), GET_FORMAT(DATE, 'USA'))
FROM DUAL;



#4.流程控制函数
#4.1 IF(VALUE,VALUE1,VALUE2)
SELECT last_name, salary, IF(salary >= 6000, '高工资', '低工资') "details"
FROM employees;

SELECT last_name,
       commission_pct,
       IF(commission_pct IS NOT NULL, commission_pct, 0)                     "details",
       salary * 12 * (1 + IF(commission_pct IS NOT NULL, commission_pct, 0)) "annual_sal"
FROM employees;

#4.2 IFNULL(VALUE1,VALUE2):看做是IF(VALUE,VALUE1,VALUE2)的特殊情况
SELECT last_name, commission_pct, IFNULL(commission_pct, 0) "details"
FROM employees;

#4.3 CASE WHEN ... THEN ...WHEN ... THEN ... ELSE ... END
# 类似于java的if ... else if ... else if ... else
SELECT last_name,
       salary,
       CASE
           WHEN salary >= 15000 THEN '白骨精'
           WHEN salary >= 10000 THEN '潜力股'
           WHEN salary >= 8000 THEN '小屌丝'
           ELSE '草根' END "details",
       department_id
FROM employees;

SELECT last_name,
       salary,
       CASE
           WHEN salary >= 15000 THEN '白骨精'
           WHEN salary >= 10000 THEN '潜力股'
           WHEN salary >= 8000 THEN '小屌丝'
           END "details"
FROM employees;

#4.4 CASE ... WHEN ... THEN ... WHEN ... THEN ... ELSE ... END
# 类似于java的swich ... case...
/*

练习1
查询部门号为 10,20, 30 的员工信息,
若部门号为 10, 则打印其工资的 1.1 倍,
20 号部门, 则打印其工资的 1.2 倍,
30 号部门,打印其工资的 1.3 倍数,
其他部门,打印其工资的 1.4 倍数

*/
SELECT employee_id,
       last_name,
       department_id,
       salary,
       CASE department_id
           WHEN 10 THEN salary * 1.1
           WHEN 20 THEN salary * 1.2
           WHEN 30 THEN salary * 1.3
           ELSE salary * 1.4 END "details"
FROM employees;

/*
练习2
查询部门号为 10,20, 30 的员工信息,
若部门号为 10, 则打印其工资的 1.1 倍,
20 号部门, 则打印其工资的 1.2 倍,
30 号部门打印其工资的 1.3 倍数
*/
SELECT employee_id,
       last_name,
       department_id,
       salary,
       CASE department_id
           WHEN 10 THEN salary * 1.1
           WHEN 20 THEN salary * 1.2
           WHEN 30 THEN salary * 1.3
           END "details"
FROM employees
WHERE department_id IN (10, 20, 30);


#5. 加密与解密的函数
# PASSWORD()在mysql8.0中弃用。
SELECT MD5('mysql'), SHA('mysql'), MD5(MD5('mysql'))
FROM DUAL;

#ENCODE()\DECODE() 在mysql8.0中弃用。
SELECT ENCODE('zfp','mysql'),DECODE(ENCODE('zfp','mysql'),'mysql')
FROM DUAL;


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


#7. 其他函数
#如果n的值小于或者等于0，则只保留整数部分
SELECT FORMAT(123.125, 2), FORMAT(123.125, 0), FORMAT(123.125, -2)
FROM DUAL;

SELECT CONV(16, 10, 2), CONV(8888, 10, 16), CONV(NULL, 10, 2)
FROM DUAL;
#以“192.168.1.100”为例，计算方式为192乘以256的3次方，加上168乘以256的2次方，加上1乘以256，再加上100。
SELECT INET_ATON('192.168.1.100'), INET_NTOA(3232235876)
FROM DUAL;

#BENCHMARK()用于测试表达式的执行效率
SELECT BENCHMARK(100000, MD5('mysql'))
FROM DUAL;
# CONVERT():可以实现字符集的转换
SELECT CHARSET('zfp'), CHARSET(CONVERT('zfp' USING 'gbk'))
FROM DUAL;



# 第08章_聚合函数

#1. 常见的几个聚合函数
#1.1 AVG / SUM ：只适用于数值类型的字段（或变量）

SELECT AVG(salary), SUM(salary), AVG(salary) * 107
FROM employees;
#如下的操作没有意义
SELECT SUM(last_name), AVG(last_name), SUM(hire_date)
FROM employees;


#1.2 MAX / MIN :适用于数值类型、字符串类型、日期时间类型的字段（或变量）

SELECT MAX(salary), MIN(salary)
FROM employees;

SELECT MAX(last_name), MIN(last_name), MAX(hire_date), MIN(hire_date)
FROM employees;


#1.3 COUNT：
# ① 作用：计算指定字段在查询结构中出现的个数（不包含NULL值的）

SELECT COUNT(employee_id), COUNT(salary), COUNT(2 * salary), COUNT(1), COUNT(2), COUNT(*)
FROM employees;

SELECT *
FROM employees;

#如果计算表中有多少条记录，如何实现？
#方式1：COUNT(*)
#方式2：COUNT(1)
#方式3：COUNT(具体字段) : 不一定对！

#② 注意：计算指定字段出现的个数时，是不计算NULL值的。
SELECT COUNT(commission_pct)
FROM employees;

SELECT commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;

#③ 公式：AVG = SUM / COUNT
SELECT AVG(salary),
       SUM(salary) / COUNT(salary),
       AVG(commission_pct),
       SUM(commission_pct) / COUNT(commission_pct),
       SUM(commission_pct) / 107
FROM employees;

#需求：查询公司中平均奖金率
#错误的！
SELECT AVG(commission_pct)
FROM employees;

#正确的：
SELECT SUM(commission_pct) / COUNT(IFNULL(commission_pct, 0)),
       AVG(IFNULL(commission_pct, 0))
FROM employees;

# 如何需要统计表中的记录数，使用COUNT(*)、COUNT(1)、COUNT(具体字段) 哪个效率更高呢？
# 如果使用的是MyISAM 存储引擎，则三者效率相同，都是O(1)
# 如果使用的是InnoDB 存储引擎，则三者效率：COUNT(*) = COUNT(1)> COUNT(字段)


#其他：方差、标准差、中位数

#2. GROUP BY 的使用

#需求：查询各个部门的平均工资，最高工资
SELECT department_id, AVG(salary), SUM(salary)
FROM employees
GROUP BY department_id;

#需求：查询各个job_id的平均工资
SELECT job_id, AVG(salary)
FROM employees
GROUP BY job_id;

#需求：查询各个department_id,job_id的平均工资
#方式1：
SELECT department_id, job_id, AVG(salary)
FROM employees
GROUP BY department_id, job_id;
#方式2：
SELECT job_id, department_id, AVG(salary)
FROM employees
GROUP BY job_id, department_id;


#错误的！
SELECT department_id, job_id, AVG(salary)
FROM employees
GROUP BY department_id;

#结论1：SELECT中出现的非组函数的字段必须声明在GROUP BY 中。
#      反之，GROUP BY中声明的字段可以不出现在SELECT中。

#结论2：GROUP BY 声明在FROM后面、WHERE后面，ORDER BY 前面、LIMIT前面

#结论3：MySQL中GROUP BY中使用WITH ROLLUP

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
WITH ROLLUP;

#需求：查询各个部门的平均工资，按照平均工资升序排列
SELECT department_id, AVG(salary) avg_sal
FROM employees
GROUP BY department_id
ORDER BY avg_sal ASC;

#说明：当使用ROLLUP时，不能同时使用ORDER BY子句进行结果排序，即ROLLUP和ORDER BY是互相排斥的。
#错误的：
SELECT department_id, AVG(salary) avg_sal
FROM employees
GROUP BY department_id
WITH ROLLUP
ORDER BY avg_sal ASC;

#3. HAVING的使用 (作用：用来过滤数据的)
#练习：查询各个部门中最高工资比10000高的部门信息
#错误的写法：
# SELECT department_id, MAX(salary)
# FROM employees
# WHERE MAX(salary) > 10000
# GROUP BY department_id;


#要求1：如果过滤条件中使用了聚合函数，则必须使用HAVING来替换WHERE。否则，报错。
#要求2：HAVING 必须声明在 GROUP BY 的后面。

#正确的写法：
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000;

#要求3：开发中，我们使用HAVING的前提是SQL中使用了GROUP BY。


#练习：查询部门id为10,20,30,40这4个部门中最高工资比10000高的部门信息
#方式1：推荐，执行效率高于方式2.
SELECT department_id, MAX(salary)
FROM employees
WHERE department_id IN (10, 20, 30, 40)
GROUP BY department_id
HAVING MAX(salary) > 10000;

#方式2：
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000
   AND department_id IN (10, 20, 30, 40);

#结论：当过滤条件中有聚合函数时，则此过滤条件必须声明在HAVING中。
#      当过滤条件中没有聚合函数时，则此过滤条件声明在WHERE中或HAVING中都可以。但是，建议大家声明在WHERE中。

/*
  WHERE 与 HAVING 的对比
1. 从适用范围上来讲，HAVING的适用范围更广。
2. 如果过滤条件中没有聚合函数：这种情况下，WHERE的执行效率要高于HAVING
*/

#4. SQL底层执行原理
#4.1 SELECT 语句的完整结构
/*

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


*/

#4.2 SQL语句的执行过程：
#FROM ...,...-> ON -> (LEFT/RIGNT  JOIN) -> WHERE -> GROUP BY -> HAVING -> SELECT -> DISTINCT ->
# ORDER BY -> LIMIT


# 5.查询公司各员工工作的年数、工作的天数，并按工作年数的降序排序
SELECT employee_id,
       DATEDIFF(CURDATE(), hire_date) / 365    "worked_years",
       DATEDIFF(CURDATE(), hire_date)          "worked_days",
       TO_DAYS(CURDATE()) - TO_DAYS(hire_date) "worked_days1"
FROM employees
ORDER BY worked_years DESC;


# 6.查询员工姓名，hire_date , department_id，满足以下条件：
#雇用时间在1997年之后，department_id 为80 或 90 或110, commission_pct不为空
SELECT last_name, hire_date, department_id
FROM employees
WHERE department_id IN (80, 90, 110)
  AND commission_pct IS NOT NULL
#and hire_date >= '1997-01-01';  #存在着隐式转换
#and  date_format(hire_date,'%Y-%m-%d') >= '1997-01-01';  # 显式转换操作，格式化：日期---> 字符串
#and  date_format(hire_date,'%Y') >= '1997';   # 显式转换操作，格式化
  AND hire_date >= STR_TO_DATE('1997-01-01', '%Y-%m-%d');# 显式转换操作，解析：字符串 ----> 日期