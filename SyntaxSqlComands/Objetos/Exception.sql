--EXEMPLO DE EXCEPTION
DECLARE
  vCod   taluno.cod_aluno%TYPE := 566;
  vCidade taluno.cidade%TYPE;    x NUMBER;
BEGIN
  SELECT Cidade INTO vCidade
  FROM TAluno
  WHERE nome LIKE '%';
  --WHERE  cod_aluno = vCod;
  X := 0 / 0;
  Dbms_Output.Put_Line('Cidade: '||vCidade);
EXCEPTION
  WHEN no_data_found THEN
    RAISE_APPLICATION_ERROR(-20001,
           'Aluno Inexistente! '||SQLCODE||' '||SQLERRM);
  WHEN too_many_rows THEN
    RAISE_APPLICATION_ERROR(-20002,
           'Registro Duplicado! '||SQLCODE||' '||SQLERRM);
  WHEN others THEN
    RAISE_APPLICATION_ERROR(-20003,
           'Exceção Desconhecida! '||SQLCODE||' '||SQLERRM);
END;

--ERROS PRÉ DEFINIDOS ORACLE

ACCESS_INTO_NULL (ORA-06530)
--Um programa tenta atribuir valores aos atributos de um objeto não inicializado.

CASE_NOT_FOUND (ORA-06592)
--Nenhuma das opções nas WHEN cláusulas de uma CASE instrução é selecionada e não há ELSE cláusula.

COLLECTION_IS_NULL(ORA-06531)
--Tentativa de aplicar métodos que não o EXISTS para uma Collection table não inicializada.

CURSOR_ALREADY_OPEN(ORA-06511)
--Tentativa de abrir um cursor que já aberto.

DUP_VAL_ON_INDEX(ORA-00001)
--Tentativa de inserir um valor duplicado.

INVALID_CURSOR(ORA-01001)
--Ocorreu uma operação ilegal em um cursor.

INVALID_NUMBER(ORA-01722)
--Falha na conversão de uma string caractere para numérica.

LOGIN_DENIED(ORA-01017)
--Conexão ao Oracle com um nome de usuário e/ou senha inválida.

NO_DATA_FOUND(ORA-01403)
--SELECT do tipo single-row não retornou nenhuma linha.

NO_DATA_NEEDED(ORA-06548)

NOT_LOGGED_ON(ORA-01012)
--Programa PL/SQL executou uma chamada ao banco de dados sem estar conectado ao Oracle.

PROGRAM_ERROR(ORA-06501)
--	PL/SQL tem um problema interno.

ROWTYPE_MISMATCH(ORA-06504)
--A variável de cursor do host e a variável de cursor PL/SQL envolvidas em uma atribuição têm tipos de retorno incompatíveis. 
--Por exemplo, quando uma variável de cursor de host aberta é passada para um subprograma armazenado, os tipos de retorno dos parâmetros reais e formais devem ser compatíveis.

SELF_IS_NULL(ORA-030625)
--Um programa tenta chamar um método MEMBER, mas a instância do tipo de objeto não foi inicializada. O parâmetro interno SELF aponta para o objeto e é sempre o primeiro parâmetro passado para um método MEMBER.

STORAGE_ERROR(ORA-06500)
--PL/SQL fica sem memória ou a memória foi corrompida.

SUBSCRIPT_BEYOND_COUNT(ORA-06533)
--Um programa faz referência a uma tabela aninhada ou elemento varray usando um número de índice maior que o número de elementos na coleção.

SUBSCRIPT_OUTSIDE_LIMIT(ORA-06532)
--Um programa faz referência a uma tabela aninhada ou elemento varray usando um número de índice (-1, por exemplo) que está fora do intervalo legal.

SYS_INVALID_ROWID(ORA-01410)
--A conversão de uma cadeia de caracteres em um rowid universal falha porque a cadeia de caracteres não representa um rowid válido.

TIMEOUT_ON_RESOURCE(ORA-00051)
--Ocorreu um time-out enquanto o Oracle estava aguardando por um recurso.

TOO_MANY_ROWS(ORA-01422)
--SELECT do tipo single-row retornou mais que uma linha.

VALUE_ERROR(ORA-06502)
--Ocorreu um erro de aritmética.

ZERO_DIVIDE(ORA-01476)
--Tentativa de divisão por zero.


--CRIAÇÃO DE MENSAGENS DE ERRO 
WHEN NO_DATA_FOUND
    RAISE_APPLICATION_ERROR(-20001, 'TEXTO A SER EXIBIDO');

--SQLCODE: CÓDIGO DO ERRO
WHEN NO_DATA_FOUND
    RAISE_APPLICATION_ERROR(-20001, 'TEXTO A SER EXIBIDO' || SQLCODE);

--SQLERRM : MENSAGEM DO ERRO
WHEN NO_DATA_FOUND
    RAISE_APPLICATION_ERROR(-20001, 'TEXTO A SER EXIBIDO' || SQLERRM);

--EXCEÇÕES DEFINIDAS PELO DESENVOLVEDOR
DECLARE
    VARIAVEIS;
    eNOME_EXCEPTION EXCEPTION;
BEGIN
    IF ( 1 + 1 <> 2) THEN
      RAISE eNOME_EXCEPTION; --CHAMA O ERRO
EXCEPTION
    WHEN eNOME_EXCEPTION THEN
        UPDATE ...
END;

--NOMEANDO ERROR JÁ EXISTENTES SEM NOME
DECLARE
   EFK_ERRO EXCEPTION;
   PRAGMA EXCEPTION_INIT(EFK_ERRO, -02291); --ERRO DE FOREIGN KEY
BEGIN
  INSERT INTO TBAIRRO VALUES ( 100, 100, 'RIO BRANCO');
EXCEPTION
   WHEN EFK_ERRO THEN
     RAISE_APPLICATION_ERROR(-20200, 'Cidade não existe!' );
END;