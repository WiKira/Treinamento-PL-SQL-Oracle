--ESTRUTURA IF SIMPLES
DECLARE
VARIAVEIS
BEGIN
    IF (CONDITION) THEN
    .....................
    ELSE
    .....................
    END IF;
END;

--ESTRUTURA COM ELSIF
DECLARE
VARIAVEIS
BEGIN
    IF (CONDITION) THEN
    .....................
    ELSIF(CONDITION) THEN
    .....................
    ELSIF(CONDITION) THEN
    .....................
    ELSE 
    .....................
    END IF;
END;

--ESTRUTURA CASE WHEN
DECLARE
VARIAVEIS
BEGIN
   CASE
     WHEN CONDITION THEN ...;
     WHEN CONDITION THEN ...;
   ELSE
     CONDITION
   END CASE;
END;

--ESTRUTURA LOOP
DECLARE
  vContador INTEGER := 0;
BEGIN
  LOOP
    vContador := VCONTADOR + 1;
    Dbms_Output.Put_Line(vContador);
    EXIT WHEN vContador = 10;
  END LOOP;
  Dbms_Output.Put_Line('Fim do LOOP');
END;

--ESTRUTURA FOR
DECLARE
  VCONTADOR INTEGER;
BEGIN
   FOR VCONTADOR IN 1..10
   LOOP
    Dbms_Output.Put_Line(VCONTADOR);
   END LOOP;
END;

--WHILE LOOP
DECLARE
   VCONTADOR INTEGER := 0;
   VTEXTO VARCHAR (10);
BEGIN
   WHILE VCONTADOR < 10
   LOOP
     VCONTADOR := VCONTADOR + 1;
     IF (VCONTADOR MOD 2)=0 THEN
        VTEXTO := 'PAR';
     ELSE 
        VTEXTO := 'IMPAR';
     END IF;
     Dbms_Output.Put_Line(VCONTADOR || ' -> ' || VTEXTO);
   END LOOP;
END;
