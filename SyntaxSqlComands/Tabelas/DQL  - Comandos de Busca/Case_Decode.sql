
--Estrutura Case

SELECT
    CASE
         WHEN (STATUS = 0) THEN 'Inativo'
         WHEN (STATUS = 1) THEN 'Ativo'
         WHEN (STATUS = 2) THEN 'Fora de Linha' 
         WHEN (STATUS = 3) THEN 'Novo' 
         WHEN (STATUS = 4 ) THEN 'Zerado'        
       END AS DESC_STATUS_CASE,
  FROM DUAL;


--Estrutura DecodE
SELECT
       DECODE(STATUS, 0, 'Inativo',
                      1, 'Ativo',
                      2, 'Fora de Linha',
                      3, 'Novo',
                      4, 'Zerado'
                       , 'Default') AS DESC_STATUS_DECODE,
  FROM DUAL;
                                          