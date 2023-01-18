--Retorna data/hora do Servidor
SELECT SYSDATE FROM DUAL;

--Somando dias em uma data
SELECT SYSDATE + QUANT_DIAS AS "Data+Dias"
  FROM DUAL;

--Somando horas em um SYSDATE
SELECT SYSDATE + QUANT_HORAS / 24 AS "Data+Horas"
  FROM DUAL;

--Somando minutos em um SYSDATE
SELECT SYSDATE + QUANT_MINUTOS / 1440 as "Data+Minutos"
  FROM DUAL;

--Somando segundos em um SYSDATE
SELECT SYSDATE + QUANT_SEGUNDIS / (3600 * 24) as "Data+Segundos" 
  FROM DUAL;

--Subtraindo datas
SELECT TRUNC(SYSDATE - DATA) AS DIAS
  FROM DUAL;

--Tirar hora do SYSDATE
SELECT SYSDATE, Trunc(SYSDATE)
  FROM DUAL;

--DiferenÇa de meses entre datas
SELECT Months_Between(SYSDATE, SYSDATE-90) AS DIF_MES 
  FROM DUAL;

--Adiciona meses
SELECT Add_Months(SYSDATE, 5) AS ADICIONA_MES_DATA 
  FROM DUAL;

--Proxima data a partir de uma dia da semana
SELECT Next_Day(SYSDATE, 'QUARTA-FEIRA') AS PROXIMA_QUARTA_DATA 
  FROM DUAL;

--Último dia do mes
SELECT Last_Day(SYSDATE) AS ULTIMO_DIA_MES 
  FROM DUAL;

--Retorna primeiro dia do proximo mês
--OBS: Até dia 15 do mes pega o primeiro dia do mes atual a partir do dia 16 retorna o primeiro dia do proximo mes
SELECT Round(SYSDATE, 'MONTH') AS PRIMEIRO_DIA_PROXIMO_MES FROM DUAL;

--Primeiro dia do mes
SELECT Trunc(SYSDATE,'MONTH') AS PRIMEIRO_DIA_MES_CORRENTE FROM DUAL;