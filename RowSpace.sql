with
  sample_data (country, date_id) as (
    select 'USA', 199003 from dual union all
    select 'USA', 200004 from dual union all
    select 'USA', 200005 from dual union all
    select 'USA', 200009 from dual union all
    select 'USA', 200010 from dual union all
    select 'UK' , 199307 from dual union all
    select 'UK' , 199308 from dual union all
    select 'UK' , 199408 from dual
  ),
TMP1 AS 
(SELECT COUNTRY, DATE_ID, 
TO_DATE(TO_CHAR(DATE_ID,'FM999999'),'YYYYMM')  AS DT),
TMP2 AS 
(SELECT COUNTRY, DATE_ID, 
ROW_NUMBER() OVER (PARTITION BY COUNTRY ORDER BY DT) RN,
COUNT(*) OVER (PARTITION BY COUNTRY ORDER BY DT 
RANGE BETWEEN CURRENT ROW AND 
)


 FROM TMP1)





