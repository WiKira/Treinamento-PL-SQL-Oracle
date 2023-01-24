
--Group by é usando quando foi usado função de grupo e um dos registros não são incluidos nas funções
SELECT column_name(s)
  FROM table_name
 WHERE condition
 GROUP BY column_name(s)
 ORDER BY column_name(s);

Exemplo udemy:
SELECT COD_ALUNO,
       COUNT(*) AS QTDE_CONTRATO,
       Sum(TOTAL) AS VALOR_TOTAL
  FROM TCONTRATO2
 GROUP BY COD_ALUNO;


--Having funciona como a clausula Where, pórem para funções de grupo
SELECT column_name(s)
  FROM table_name
 WHERE condition
 GROUP BY column_name(s)
 HAVING condition função de grupo
 ORDER BY column_name(s);

 Exemplo udemy:
SELECT COD_ALUNO, AVG(TOTAL) MEDIA
FROM TCONTRATO2
WHERE COD_ALUNO > 0
HAVING AVG(Total) > 500
GROUP BY COD_ALUNO
ORDER BY COD_ALUNO;