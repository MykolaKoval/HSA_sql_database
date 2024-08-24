INSERT INTO names (id, name)
VALUES
    (1, 'Vasyl'),
    (2, 'Dmytro'),
    (3, 'Ganna'),
    (4, 'Oleksandr'),
    (5, 'Eva'),
    (6, 'Dmytro'),
    (7, 'Sergiy'),
    (8, 'Severin'),
    (9, 'Dmytro'),
    (10, 'Maria');

 -- For date generation MAKEDATE mysql function is used
 -- To generate random number in [min,max] interval: FLOOR( RAND() * (max-min) + min)
 SET SESSION cte_max_recursion_depth = 40000000;
 INSERT INTO users (name, birth_date)
 WITH RECURSIVE tmp(name, birth_date) AS (
     SELECT CAST('Vasyl' AS CHAR(20)) AS name, '1999-12-31'
     UNION ALL
     SELECT (SELECT name FROM names ORDER BY RAND() LIMIT 1),
     MAKEDATE(FLOOR(RAND()*(2023-1991)+1991), FLOOR(RAND()*(365-1)+1))
     FROM tmp limit 40000000
 )
 select name, birth_date from tmp;