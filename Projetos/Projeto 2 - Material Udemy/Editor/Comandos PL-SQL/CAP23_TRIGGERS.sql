
DECLARE
  HORA VARCHAR2(2);
  H NUMBER; 
BEGIN
  H := TO_NUMBER(TO_CHAR(SYSDATE - 3/24,'HH24'));
  Dbms_Output.Put_Line(INITCAP(TO_CHAR(SYSDATE+4, 'DAY')) || '- '|| H || ' Horas');
END;

BEGIN
  IF(TO_CHAR(SYSDATE+4,'DAY') IN ('S�BADO       ','DOMINGO       ') OR TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) NOT BETWEEN 8 AND 18) THEN
     RAISE_APPLICATION_ERROR (-20001,'Fora do Hor�rio comercial');
  END IF;
END;