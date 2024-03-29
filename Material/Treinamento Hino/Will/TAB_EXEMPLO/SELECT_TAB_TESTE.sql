

SELECT DECODE(CODPRODUTO, NULL, DECODE(CODTIPO, NULL, 'TOTAL DO REPRESENTANTE ' || CODREPRES, 'TOTAL DO TIPO ' || CODTIPO  || ' DO REPRESENTANTE ' || CODREPRES), CODREPRES) REPRES, 
       DECODE(CODPRODUTO, NULL, NULL, CODTIPO) CODTIPO, 
       CODPRODUTO, 
       VALORTOTAL 
  FROM (SELECT VEPEDVENDA.CODREPRES, FSPRODUTOPARAMESTAB.CODTIPO, FSNFITEM.CODPRODUTO, SUM(FSNFITEM.VALORTOTAL) VALORTOTAL    
          FROM FSNFSAIDA, FSNFITEM, VEPEDVENDA, FSPRODUTOPARAMESTAB
         WHERE FSNFSAIDA.CODESTAB = 1
           AND FSNFSAIDA.DTEMISSAO >= TO_DATE('01/08/2022', 'DD/MM/YYYY')  
           AND FSNFITEM.CODESTAB = FSNFSAIDA.CODESTAB
           AND FSNFITEM.INDICENFSAI = FSNFSAIDA.INDICENFSAI
           AND FSNFITEM.CODTIPOMOV = 'SF'
           AND VEPEDVENDA.CODESTAB = FSNFITEM.CODESTAB
           AND VEPEDVENDA.CODPEDVENDA = FSNFITEM.CODPEDVENDA
           AND FSPRODUTOPARAMESTAB.CODESTAB = FSNFITEM.CODESTAB
           AND FSPRODUTOPARAMESTAB.CODPRODUTO = FSNFITEM.CODPRODUTO
         GROUP BY ROLLUP(VEPEDVENDA.CODREPRES, FSPRODUTOPARAMESTAB.CODTIPO, FSNFITEM.CODPRODUTO))