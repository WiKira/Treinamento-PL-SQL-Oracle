
--Atualizar dados nas tabelas
UPDATE NOME_DA_TABELA
  SET NOME_DA_COLUNA = expression1,
      NOME_DA_COLUNA = expression2,
      NOME_DA_COLUNA_n = expression_n
WHERE conditions;

--Atualizar dados nas tabelas usando select
UPDATE NOME_DA_TABELA_1
SET NOME_DA_COLUNA = (SELECT NOME_DA_COLUNA
                        FROM NOME_DA_TABELA_2
                       WHERE conditions)
WHERE conditions;
