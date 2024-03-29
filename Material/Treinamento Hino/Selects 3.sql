-- Estabelecimentos
SELECT *
  FROM GEESTAB -- ESTADO
  
-- Endere�os
SELECT *
  FROM GEENDERECO -- ENDERE�O
  
-- Estabelecimento x Endere�o
SELECT *
  FROM GEESTAB,
       GEENDERECO
 WHERE GEENDERECO.CODENDERECO = GEESTAB.CODENDERECO
 
 -- Localidades
SELECT * 
  FROM GEPAIS -- PAIS
  
SELECT *
  FROM GEESTADO -- ESTADO
  
SELECT *
  FROM GEMUNICIPIO -- MUNICIPIO
  

SELECT *
  FROM GEMUNICIPIO,
       GEESTADO,
       GEPAIS
 WHERE GEESTADO.CODESTADO = GEMUNICIPIO.CODESTADO
   AND GEPAIS.CODPAIS = GEESTADO.CODPAIS
   
 SELECT *
   FROM GEMUNICIPIOIBGE -- MUNIC�PIO PADR�O IBGE
   
 SELECT *
   FROM GEESTADOIBGE -- ESTADO PADR�O DO IBGE
   
 SELECT *
   FROM GEPAISBACEN -- PAIS PADR�O DO BANCO CENTRAL
   
 -- Moedas
 SELECT *
   FROM GEMOEDA -- MOEDAS
   
 SELECT *
   FROM GECAMBIO -- COTA��ES/CAMBIO
       
 -- Forma e condi��o de pagto
 SELECT *
   FROM VEFORMAPGTO -- FORMA DE PAGAMENTO
 
SELECT *
  FROM VECONDPGTO -- CONDI��O DE PAGAMENTO
  
SELECT *
  FROM VEDETCONDPGTO -- DETALHE DA CONDI��O DE PAGAMENTO (PARCELAS E PERCENTUAL)
  
-- Empresas
SELECT *
  FROM GEEMPRESA -- EMPRESAS
  
SELECT *
  FROM GEEMPRESAPARAMESTAB -- DADOS DA EMPRESA POR ESTABELECIMENTO
  
 SELECT *
   FROM GEENDEMPRESA -- ENDERE�OS DAS EMPRESAS 
  
 SELECT *
   FROM PEEMPRESA -- PERSONALIZADA DE EMPRESAS