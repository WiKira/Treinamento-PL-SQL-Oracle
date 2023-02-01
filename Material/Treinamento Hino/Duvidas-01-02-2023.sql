select *
  from geestab
  where rowid = 'AAF+VcAABAAFDj1AAA'
  
  
select codproduto
from fsnfitem
where rownum < 10
order by codproduto desc

600.00941

select codproduto from (
select *
from fsnfitem
order by codproduto desc
) where rownum < 10



select codproduto, descricao
  from fsproduto
 where descricao like 'TORNEIRA JARDIM%'
  
select LISTAGG(Codproduto || ' - ' || descricao, '; ')
  from fsproduto
 where descricao like 'TORNEIRA JARDIM%'
 
  SELECT PCKG_UTEIS.ROWTOCOL('select codproduto || ''-'' || descricao from fsproduto where descricao like ''TORNEIRA JARDIM%''', '; ') FROM DUAL
 
 SELECT BASE.DATA, SUM(1) TOTVENDAS,
        LISTAGG(DESCRICAO, '; ')
   FROM (SELECT TRUNC(FSNFSAIDA.DTEMISSAO) DATA, FSPRODUTO.DESCRICAO
           FROM FSNFSAIDA, FSNFITEM, FSPRODUTO
          WHERE FSNFSAIDA.DTEMISSAO >= SYSDATE - 160
            AND FSNFITEM.CODESTAB = FSNFSAIDA.CODESTAB
            AND FSNFITEM.INDICENFSAI = FSNFSAIDA.INDICENFSAI
            AND FSPRODUTO.CODPRODUTO = FSNFITEM.CODPRODUTO) BASE
   GROUP BY BASE.DATA
   
SELECT TAB1.employee_id FROM (
SELECT 2 employee_id FROM DUAL UNION ALL
SELECT 4 FROM DUAL UNION ALL
SELECT 5 FROM DUAL) TAB1
UNION
SELECT TAB2.employee_id FROM (
SELECT 5 employee_id FROM DUAL UNION ALL
SELECT 1 FROM DUAL UNION ALL
SELECT 4 FROM DUAL) TAB2

SELECT TAB1.employee_id FROM (
SELECT 2 employee_id FROM DUAL UNION ALL
SELECT 4 FROM DUAL UNION ALL
SELECT 5 FROM DUAL) TAB1
UNION ALL
SELECT TAB2.employee_id FROM (
SELECT 5 employee_id FROM DUAL UNION ALL
SELECT 1 FROM DUAL UNION ALL
SELECT 4 FROM DUAL) TAB2

SELECT TAB1.employee_id FROM (
SELECT 2 employee_id FROM DUAL UNION ALL
SELECT 4 FROM DUAL UNION ALL
SELECT 5 FROM DUAL) TAB1
MINUS
SELECT TAB2.employee_id FROM (
SELECT 5 employee_id FROM DUAL UNION ALL
SELECT 1 FROM DUAL UNION ALL
SELECT 4 FROM DUAL) TAB2

SELECT TAB1.employee_id FROM (
SELECT 2 employee_id FROM DUAL UNION ALL
SELECT 4 FROM DUAL UNION ALL
SELECT 5 FROM DUAL) TAB1
INTERSECT
SELECT TAB2.employee_id FROM (
SELECT 5 employee_id FROM DUAL UNION ALL
SELECT 1 FROM DUAL UNION ALL
SELECT 4 FROM DUAL) TAB2



SELECT employee_id, COUNT(*)
FROM (
SELECT TAB1.employee_id FROM (
SELECT 2 employee_id FROM DUAL UNION ALL
SELECT 4 FROM DUAL UNION ALL
SELECT 5 FROM DUAL) TAB1
UNION ALL
SELECT TAB2.employee_id FROM (
SELECT 5 employee_id FROM DUAL UNION ALL
SELECT 1 FROM DUAL UNION ALL
SELECT 4 FROM DUAL) TAB2
) GROUP BY employee_id
HAVING COUNT(*) = 1

SELECT employee_id, COUNT(*) FROM (
SELECT employee_id FROM Employees
UNION ALL 
SELECT employee_id FROM Salaries )
GROUP BY employee_id
HAVING COUNT(*) = 1

select e.employee_id ID_EMPREG, s.employee_id ID_SAL,
    CASE
      WHEN e.employee_id is null THEN s.employee_id
      else e.employee_id 
    END as employee_id
from Employees e
full outer join Salaries s on e.employee_id = s.employee_id
where e.employee_id is null 
or s.employee_id is null

SELECT ID FROM (
select id, 
       data, 
       temp,
       LAG(temp) OVER (ORDER BY id) TEMP_ANT
 from (
select 1 id, to_date('2015-01-01', 'YYYY-MM_DD') data, 10 temp from dual union all
select 2 id, to_date('2015-01-02', 'YYYY-MM_DD') data, 25 temp from dual union all
select 3 id, to_date('2015-01-03', 'YYYY-MM_DD') data, 20 temp from dual union all
select 4 id, to_date('2015-01-04', 'YYYY-MM_DD') data, 30 temp from dual)
) WHERE temp > TEMP_ANT