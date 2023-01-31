
--TO_CHAR: https://sites.google.com/site/oradicas/funcoes/funcoes-de-conversao/to_char
--OBS: (OS PARAMETROS DAY E MONTH RETORNAM UM ESPAÇO APÓS SEU VALOR RESULTANTE)

--Converter date to string, exibindo apenas as informações necessárias
SELECT TO_CHAR(SYSDATE,'DD')
  FROM DUAL;

--Converter number to string
SELECT TO_CHAR(1210.5,'9999.99')
  FROM DUAL;

--Converter string to date
SELECT TO_DATE('12/05/2023','DD/MM/YYYY')
 FROM DUAL;

--Conveter string to number
SELECT TO_NUMBER('111,25','999D9') --D corta G ponto
  FROM DUAL;

--Converter null em real
SELECT NVL('VALOR A SER SUBSTITUIDO','VALOR A SER ATRIBUIDO')
 FROM DUAL;

--Converter null em real - if e else
SELECT NVL2('VALOR A SER SUBSTITUIDO','VALOR A SER ATRIBUIDO SE NÃO FOR NULO','VALOR A SER ATRIBUIDO SE FOR NULO')




