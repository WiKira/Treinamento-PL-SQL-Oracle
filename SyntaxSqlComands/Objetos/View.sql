
--Create view
CREATE OR REPLACE VIEW NOME_DA_VIEW
AS
  SELECT NOME_DA_COLUNA
  FROM NOME_DA_TABELA
  WHERE CONDITION;

--Mostrar todas as views
SELECT VIEW_NAME, TEXT
  FROM USER_VIEWS;

