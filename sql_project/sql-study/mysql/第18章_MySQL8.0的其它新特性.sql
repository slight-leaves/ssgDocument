CREATE DATABASE windowTest;

USE windowTest;

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


#查询 goods 数据表中每个商品分类下价格降序排列的各个商品信息
SELECT ROW_NUMBER() OVER (PARTITION BY category_id ORDER BY price DESC) AS row_num,
       id,
       category_id,
       category,
       NAME,
       price,
       stock
FROM goods;


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


SELECT RANK() OVER (PARTITION BY category_id ORDER BY price DESC) AS row_num,
       id,
       category_id,
       category,
       NAME,
       price,
       stock
FROM goods;

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


#查询goods数据表中小于或等于当前价格的比例。
# CUME_DIST()   前面的行数（包含本行）/分组后本组的总行数
SELECT CUME_DIST() OVER (PARTITION BY category_id ORDER BY price ASC) AS cd,
       id,
       category,
       NAME,
       price
FROM goods;

#查询goods数据表中前一个商品价格与当前商品价格的差值。
SELECT id, category, NAME, price, pre_price, price - pre_price AS diff_price
FROM (
         SELECT id, category, NAME, price, LAG(price, 1) OVER w AS pre_price
         FROM goods
             WINDOW w AS (PARTITION BY category_id ORDER BY price)) t;

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


#FIRST_VALUE(expr)函数
SELECT id,
       category,
       NAME,
       price,
       stock,
       FIRST_VALUE(price) OVER w AS
           first_price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);

#LAST_VALUE(expr)函数
SELECT id, category, NAME, price, stock, LAST_VALUE(price) OVER w AS last_price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);


#NTH_VALUE(expr,n)
SELECT id,
       category,
       NAME,
       price,
       NTH_VALUE(price, 2) OVER w AS second_price,
       NTH_VALUE(price, 3) OVER w AS third_price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);

#NTILE(n)函数
SELECT NTILE(3) OVER w AS nt, id, category, NAME, price
FROM goods WINDOW w AS (PARTITION BY category_id ORDER BY price);


WITH emp_dept_id
         AS (SELECT DISTINCT department_id FROM employees)
SELECT *
FROM departments d
         JOIN emp_dept_id e
              ON d.department_id = e.department_id;



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