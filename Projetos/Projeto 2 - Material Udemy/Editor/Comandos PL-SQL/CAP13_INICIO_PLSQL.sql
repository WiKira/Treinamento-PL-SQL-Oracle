
SELECT * 
FROM TCURSO2
ORDER BY COD_CURSO;

CREATE OR REPLACE PROCEDURE P_AUMENTA_PRECOCURSO
IS
  --variaveis
BEGIN
  UPDATE TCURSO2
  SET VALOR = VALOR * 1.20;
END;

--Executa procedure  1
EXECUTE P_AUMENTA_PRECOCURSO;

--Executa procedure  2 - Bloco anonimo
BEGIN
  P_AUMENTA_PRECOCURSO;
END;

--
SELECT * FROM TCURSO2;
