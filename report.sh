Hellow
ddd # main

# 오라클 조회 쿼리

select * from tem_div
    where name = 'Out123';

select * from (
    select name from tem_name
    where name LIKE '%Out%'
)
PIVOT (
    count(*)
        for name in (
                'Out123' AS a_1
                , 'Out1' AS a_2
                , 'Out2' AS a_3
                , 'Out3' AS a_4
                )
);

