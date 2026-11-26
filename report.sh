Hellow
ddd # main

rednene 9999999

select * from tem_div
    where name = 'Out123';

select * from (
    select name from tem_name
    where name LIKE '%Out%'
)
PIVOT (
    count(*)
        for name in (
                'Out123' AS Out123, 
                'Out1' AS Out1, 'Out2' AS Out2, 
                'Out3' AS Out3
                )
);
