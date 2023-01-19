
--Subselect Simples com retorno de 1 registro
  SELECT NOME_DA_COLUNA
  FROM NOME_DA_TABELA
  WHERE...  >
   ( SELECT NOME_DA_COLUNA
       FROM NOME_DA_TABELA
      WHERE...);

--Subselect com retorno de multiplos registro, registros esses que estão no SubSelect
  SELECT NOME_DA_COLUNA
  FROM NOME_DA_TABELA
  WHERE...  IN
   ( SELECT NOME_DA_COLUNA
       FROM NOME_DA_TABELA
      WHERE...);
  
--Subselect com retorno de multiplos registro, registros esses que não estão no SubSelect
  SELECT NOME_DA_COLUNA
  FROM NOME_DA_TABELA
  WHERE...  NOT IN
   ( SELECT NOME_DA_COLUNA
       FROM NOME_DA_TABELA
      WHERE...);


  