/*
            RECORD:
        - Basicamente um array, com multiplos valores de tipos diferentes, e a forma
        de usar suas variaveis é similar a orientação a objetos, no qual é criado uma
        variavel do tipo record, que tem como função "Chamar" cada item do array.
        Ex: PESSOA1 PESSOA  (CRIAÇÃO DE UMA VAR "PESSOA1" DO TIPO PESSOA)
            PESSOA1.NOME := 'JEAN'  (DEFININDO VALOR PARA VAR PESSOA1, NO CAMPO NOME)
            PESSOA1.DATANASCIMENTO := '16/04/2004'  (DEFININDO VALOR PARA VAR PESSOA1, NO CAMPO DATA)
*/


--RECORD CREATE
    TYPE TYPE_NAME IS RECORD (FIELD_DECLARATION);

--Exemplo Udemy:



/*
            TIPOS DE COLLECTIONS:
    
        ASSOCIATIVE ARRAYS (INDEX-BY-TABLES):
    - Vetor que pode ser preenchido com valores númericos (positivos e negativos) ou caracteres, 
      permitindo buracos na definição. OBS: Cláusula INDEX BY Obrigatória.

        NESTED TABLES:
    - Vetor que pode ser preenchido com valores númericos (1 até n)
    inicialmente definida como sendo sem buracos, porém pode ficar com buracos onde registros
    forem apagados, podendo ser dinamicamente entendida. OBS: Cláusula EXTEND Obrigatória.

        VARRAYS:
    - Vetor tradicional, tamanho não modificavel.

*/

--ASSOCIATIVE ARRAY CREATE
    TYPE TYPE_NAME IS TABLE OF (FIELD_DECLARATION)
        INDEX BY BINARY_INTEGER;

--ASSOCIATIVE ARRAY CREATE 




--NESTED TABLES CREATE 
    TYPE TYPE_NAME IS TABLE OF (FIELD_DECLARATION)

--NESTED TABLES INICIALIZAÇÃO COM VALOR NULL DE LINHAS
    TYPE_NAME TYPE := TYPE();
    TYPE_NAME.EXTEND; --ALOCANDO LINHA

--NESTED TABLES INICIALIZAÇÃO COM UMA LINHA
    TYPE_NAME TYPE := TYPE(NULL);

--NESTED TABLES DECLARAÇÃO DE VALORES
    TYPE_NAME(1) := 'MARCIO';



--VARRAYS CREATE
    TYPE TYPE_NAME IS VARRAY(N) OF (FIELD_DECLARATION);

--VARRAYS INICIALIZAÇÃO COM VALOR NULL DE LINHAS
    TYPE_NAME TYPE := TYPE();
    TYPE_NAME.EXTEND; --ALOCANDO LINHA

--VARRAYS INICIALIZAÇÃO COM UMA LINHA
    TYPE_NAME TYPE := TYPE(NULL);

--VARRAYS DECLARAÇÃO DE VALORES
    TYPE_NAME(1) := 'MARCIO';
