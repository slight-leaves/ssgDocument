SHOW ENGINES;

SHOW VARIABLES LIKE '%datadir%';

SHOW GLOBAL VARIABLES LIKE '%query_cache_type%';

SHOW STATUS LIKE '%Qcache%';


SELECT @@profiling;
SHOW VARIABLES LIKE 'profiling';

SET profiling = 1;

SELECT *
FROM employees
LIMIT 100;
SHOW PROFILES; # 显示最近的几次查询

SHOW PROFILE;
SHOW PROFILE FOR QUERY 1;
SHOW PROFILE CPU, BLOCK IO FOR QUERY 1;

SHOW VARIABLES LIKE 'innodb_buffer_pool_size';

SET GLOBAL innodb_buffer_pool_size = 268435456;

SHOW VARIABLES LIKE 'innodb_buffer_pool_instances';

SHOW ENGINES;

SHOW VARIABLES LIKE '%storage_engine%';
#或
SELECT @@default_storage_engine;