
SELECT COD_ALUNO, CEP
  FROM TALUNO2
 ORDER BY COD_ALUNO;

  SELECT * FROM TCONTRATO2;

  -- Produto Cartesiano -> ERRADO
  SELECT TALUNO2.COD_ALUNO, TALUNO2.NOME, TCONTRATO2.TOTAL
  FROM TALUNO2,TCONTRATO2;

  -- Correto
  SELECT TALUNO2.COD_ALUNO, TALUNO2.NOME, TCONTRATO2.TOTAL
  FROM TALUNO2, TCONTRATO2
  WHERE TALUNO2.COD_ALUNO = TCONTRATO2.COD_ALUNO
  ORDER BY COD_ALUNO;

  UPDATE TALUNO2 SET
  NOME = 'MARCOS'
  WHERE COD_ALUNO = 5;

  -- Errado - Coluna ambigua
  SELECT COD_ALUNO, TALUNO2.NOME, TCONTRATO2.TOTAL
  FROM TALUNO2, TCONTRATO2
  WHERE TALUNO2.COD_ALUNO = TALUNO2.COD_ALUNO;
  --Correto, quando uma coluna existe com mesmo nome em mais de uma tabela,
  --colocar prefixo na coluna
  
  
  --Uniao da tabela de aluno com contrato
  SELECT ALU.COD_ALUNO, ALU.NOME AS ALUNO,
         CON.COD_CONTRATO,CON.DATA, CON.TOTAL

  FROM TALUNO2 ALU, TCONTRATO2 CON

  WHERE CON.COD_ALUNO = ALU.COD_ALUNO    --Criterio Uniao

  AND Upper(ALU.NOME) LIKE '%'           --Filtro

  ORDER BY ALU.NOME;                  --Ordenar por nome





  ------------------------------------------

  SELECT * FROM TALUNO2;
  
  SELECT * FROM TCONTRATO2;
  
  SELECT * FROM TITEM2;
  
  SELECT * FROM TCURSO2;

  SELECT ALU.COD_ALUNO, ALU.NOME AS ALUNO,
         CON.COD_CONTRATO, CON.DATA, CON.TOTAL,
         ITE.COD_CURSO, CUR.NOME AS CURSO,
         ITE.VALOR
  FROM TALUNO2 ALU, TCONTRATO2 CON,
       TITEM2 ITE, TCURSO2 CUR
  WHERE ALU.COD_ALUNO = CON.COD_ALUNO(+)  --Criterio Uniao
  AND   CON.COD_CONTRATO = ITE.COD_CONTRATO(+)
  AND   ITE.COD_CURSO = CUR.COD_CURSO(+)
  ORDER BY CON.TOTAL DESC;

  INSERT INTO TALUNO2 VALUES (10, 'PEDRO', 'NOVO HAMBURGO', NULL);


----------------------------------------------------

  CREATE TABLE TDESCONTO2
  ( CLASSE VARCHAR(1) PRIMARY KEY,
    INFERIOR NUMBER(4,2),
    SUPERIOR NUMBER(4,2)
   );


INSERT ALL
  INTO TDESCONTO2 VALUES ('A',00,10)
  INTO TDESCONTO2 VALUES ('A',00,10)
  INTO TDESCONTO2 VALUES ('B',11,15)
  INTO TDESCONTO2 VALUES ('C',16,20)
  INTO TDESCONTO2 VALUES ('D',21,25)
  INTO TDESCONTO2 VALUES ('E',26,30)
SELECT * FROM DUAL;

  SELECT * FROM TDESCONTO2;


  COMMIT;


  ---------

  SELECT * FROM TCONTRATO2;

  UPDATE TCONTRATO2 SET
  DESCONTO = 27
  WHERE COD_CONTRATO = 4;


  UPDATE TCONTRATO2 SET
  DESCONTO = 18
  WHERE COD_CONTRATO = 5;


  -------------
  
SELECT CON.COD_CONTRATO AS CONTRATO, CON.DESCONTO,DES.CLASSE AS DESCONTO
  FROM TCONTRATO2 CON, TDESCONTO2 DES
 WHERE CON.DESCONTO BETWEEN DES.INFERIOR AND DES.SUPERIOR
 ORDER BY CON.COD_CONTRATO;


  --Mostrar cursos vendidos
  SELECT CUR.COD_CURSO, CUR.NOME, ITE.VALOR
  FROM TCURSO2 CUR, TITEM2 ITE
  WHERE CUR.COD_CURSO = ITE.COD_CURSO;


  --Mostrar cursos nao vendidos
  SELECT CUR.COD_CURSO, CUR.NOME, ITE.COD_ITEM
  FROM TCURSO2 CUR, TITEM2 ITE
  WHERE CUR.COD_CURSO = ITE.COD_CURSO(+)
  AND ITE.COD_ITEM IS NULL;

  SELECT * FROM TCURSO2;

  INSERT INTO TCURSO2 VALUES (6, 'PHP', 1000, 100,3);
  
  INSERT INTO TCURSO2 VALUES (7,'LOGICA',100,20,8);



  --Add coluna na tabela
  ALTER TABLE TCURSO2 ADD PRE_REQ INTEGER;


SELECT * FROM TCURSO2
 ORDER BY COD_CURSO;


UPDATE TCURSO2
 SET COD_CURSO = 6
 WHERE COD_CURSO = 7;


  UPDATE TCURSO2 SET PRE_REQ = 6
      WHERE COD_CURSO = 1;

  UPDATE TCURSO2 SET PRE_REQ = 6
      WHERE COD_CURSO = 3;

  UPDATE TCURSO2 SET PRE_REQ = 1
      WHERE COD_CURSO = 2;

  UPDATE TCURSO2 SET PRE_REQ = 3
      WHERE COD_CURSO = 4;

  UPDATE TCURSO2 SET PRE_REQ = 6
      WHERE COD_CURSO = 5;

UPDATE TCURSO2 SET PRE_REQ = NULL
      WHERE COD_CURSO = 6;


  --Select de duas tabelas (a mesma tabela)
  SELECT Curso.Nome AS Curso,
         Pre_Req.Nome AS Pre_Requisito
  FROM TCURSO2 CURSO, TCURSO2 PRE_REQ
  WHERE CURSO.PRE_REQ = PRE_REQ.COD_CURSO(+)


 --Fim