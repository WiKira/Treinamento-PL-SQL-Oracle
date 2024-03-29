
CREATE OR REPLACE PROCEDURE AUMENTA_PRECOCURSO(PCOD_CURSO NUMBER)
IS
  --VARIAVEIS
BEGIN
   UPDATE TCURSO2
   SET VALOR = VALOR*1.1 
   WHERE COD_CURSO = PCOD_CURSO;
END;

EXEC AUMENTA_PRECOCURSO(1); --EXECUTA A PROCEDURE

SELECT *
  FROM TCURSO2
  WHERE COD_CURSO = 2;



--COM BLOCO ANONIMO
DECLARE
  VCOD INTEGER := &CODIGO;
BEGIN
  AUMENTA_PRECOCURSO(VCOD);
END;


--
CREATE OR REPLACE PROCEDURE AUMENTA_PRECO
(PCODIGO IN TCURSO2.COD_CURSO%TYPE)
IS
BEGIN
  UPDATE TCURSO2
  SET    VALOR = VALOR * 1.1
  WHERE  COD_CURSO = PCODIGO;
END;

EXEC AUMENTA_PRECO(1);





CREATE OR REPLACE PROCEDURE CONSULTA_ALUNO
( PCODIGO        IN  TALUNO2.COD_ALUNO%TYPE,
  PNOME          OUT TALUNO2.NOME%TYPE,
  PCEP           OUT TALUNO2.CEP%TYPE,
  PCIDADE        OUT TALUNO2.CIDADE%TYPE)
IS
BEGIN
  SELECT NOME, CEP, CIDADE
  INTO   PNOME, PCEP, PCIDADE
  FROM   TALUNO2
  WHERE  COD_ALUNO = PCODIGO;
END;


--Teste
DECLARE
  VNOME VARCHAR2(30);
  VCIDADE VARCHAR(30);
  VCEP VARCHAR(10);
  VCOD INTEGER := &CODIGO;
BEGIN
  --EXECUTA A PROCEDURE
 Consulta_aluno(vcod, vnome, vcep, vcidade);

  --CONSULTA_ALUNO(PNOME => VNOME,
                -- PCODIGO => VCOD,
                -- PCIDADE => VCIDADE,
               --  PCEP => VCEP);

  DBMS_OUTPUT.PUT_LINE(VNOME);
  DBMS_OUTPUT.PUT_LINE(VCIDADE);
  DBMS_OUTPUT.PUT_LINE(VCEP);
END;


--PROCEDURE + RECORD + CURSOR
CREATE OR REPLACE PROCEDURE CONSULTA_ALUNO2
(PREGISTRO IN OUT TALUNO2%ROWTYPE)
IS
  CURSOR CSQL IS
    SELECT * FROM TALUNO2 WHERE COD_ALUNO = PREGISTRO.COD_ALUNO;
BEGIN
  OPEN CSQL;
  FETCH CSQL INTO PREGISTRO;
  CLOSE CSQL;
END;

--Teste
DECLARE
  VREGISTRO TALUNO2%ROWTYPE;
BEGIN
  VREGISTRO.COD_ALUNO := &CODIGO;
  CONSULTA_ALUNO2(VREGISTRO);
  DBMS_OUTPUT.PUT_LINE(VREGISTRO.NOME || ' - ' || VREGISTRO.CIDADE ||' - '||VREGISTRO.CEP);
END;


--------------------------------------------
CREATE OR REPLACE PROCEDURE FORMATA_NUMERO
(PTELEFONE IN OUT VARCHAR2)
IS
BEGIN
   PTELEFONE := SUBSTR(PTELEFONE, 1, 4)||'-'||
                SUBSTR(PTELEFONE, 5, 4);
END;

---------------------Teste
DECLARE
  VTELEFONE VARCHAR2(20);
BEGIN
  VTELEFONE := '12345678';
  FORMATA_NUMERO(VTELEFONE);
  DBMS_OUTPUT.PUT_LINE(VTELEFONE); --1234-5678
END;


--Exercicio
1) CRIAR UMA PROCEDURE PARA CADASTRAR ALUNO,
USAR SEQUENCE, USAR BLOCO ANONIMO PARA EXECUTAR
E IMPRIMIR O VALOR DO CODIGO CRIADO.

  OUT   IN     IN
 (PCOD, PNOME, PCIDADE)

 CREATE SEQUENCE SEQ_ALUNO START WITH 100;

 SELECT SEQ_ALUNO.NEXTVAL INTO PCOD FROM DUAL;


2)CRIAR UMA PROCEDURE PARA EXCLUIR REGISTROS DA TABELA DE
  CONTRATO (TCONTRATO) PASSAR COMO PARAMETROS DE ENTRADA
  O CODIGO DO CONTRATO A SER EXCLUIDO E RECEBER A QUANTIDADE
  DE REGISTROS EXCLUIDOS COMO SAIDA E IMPRIMIR ESTA INFORMAÇAO.

DELETE FROM TABELA WHERE COD_CONTRATO = PCOD; --param tipo in
PQTDE := SQL%ROWCOUNT; --parametro do tipo out







CREATE SEQUENCE SEQ_ALU START WITH 999

2)CRIAR UMA PROCEDURE PARA EXCLUIR REGISTROS DA TABELA DE
CONTRATO (TCONTRATO) PASSAR COMO PARAMETROS DE ENTRADA
O CODIGO DO CONTRATO A SER EXCLUIDO E RECEBER A QUANTIDADE
DE REGISTROS EXCLUIDOS COMO SAIDA E IMPRIMIR ESTA INFORMAÇAO.




--vCod NUMBER;
--Pcod := Seq_Alu.NEXTVAL;

CREATE SEQUENCE SEQ_ALU START WITH 500;
-------------------------------------------------------
CREATE OR REPLACE PROCEDURE CAD_ALUNO
(PCOD OUT NUMBER,
 PNOME IN VARCHAR,
 PCIDADE IN VARCHAR)
IS
BEGIN
  SELECT SEQ_ALU.NEXTVAL INTO PCOD FROM DUAL;
  INSERT INTO TALUNO2(COD_ALUNO,NOME,CIDADE)
  VALUES (PCOD,PNOME,PCIDADE);
END;
-----------------------------------------------------
DECLARE
  VCOD NUMBER;
  VNOME VARCHAR(20)   := '&nome';
  VCIDADE VARCHAR(20) := '&cidade';
BEGIN
  CAD_ALUNO(VCOD,VNOME,VCIDADE);
  DBMS_OUTPUT.PUT_LINE('Aluno cadastrado, Codigo->'||VCOD);
END;


2)CRIAR UMA PROCEDURE PARA EXCLUIR REGISTROS DA TABELA DE
CONTRATO (TCONTRATO) PASSAR COMO PARAMETROS DE ENTRADA
O CODIGO DO CONTRATO A SER EXCLUIDO E RECEBER A QUANTIDADE
DE REGISTROS EXCLUIDOS COMO SAIDA E IMPRIMIR ESTA INFORMAÇAO.




  EX:
  EXCLUI_CONTRATO(COD,MENSAGEM);

  IMPRESSAO: 0 CONTRATO EXCLUIDO

  VMSG := SQL%ROWCOUNT ||' CONTRATO EXCLUIDO';


----
CREATE OR REPLACE PROCEDURE EXCLUI_CONTRATO
  (PCOD IN NUMBER, PMSG OUT VARCHAR)
AS
BEGIN
  DELETE FROM TCONTRATO
  WHERE COD_CONTRATO = PCOD;
  PMSG := SQL%ROWCOUNT ||' CONTRATO EXCLUIDO ';
END;

----TESTE
DECLARE
  VMSG VARCHAR(40);
BEGIN
  EXCLUI_CONTRATO(&CODIGO, VMSG);
  DBMS_OUTPUT.PUT_LINE(VMSG);
END;

