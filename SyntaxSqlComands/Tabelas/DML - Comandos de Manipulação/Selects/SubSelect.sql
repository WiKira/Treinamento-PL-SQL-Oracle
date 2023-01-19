
--Subselect Simples com retorno de 1 registro
  SELECT NOME_DA_COLUNA
  FROM NOME_DA_TABELA
  WHERE...  >
   ( SELECT NOME_DA_COLUNA
       FROM NOME_DA_TABELA
      WHERE...);

--Subselect com retorno de multiplos registro
  SELECT NOME_DA_COLUNA
  FROM NOME_DA_TABELA
  WHERE...  IN
   ( SELECT NOME_DA_COLUNA
       FROM NOME_DA_TABELA
      WHERE...);