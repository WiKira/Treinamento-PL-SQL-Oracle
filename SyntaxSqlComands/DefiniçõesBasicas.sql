                        DQL - Linguagem de Consulta de Dados
Define o comando utilizado para que possamos consultar (SELECT) os dados armazenados no banco;

SELECT
    Lista os campos que contêm dados de interesse.
FROM
    Lista as tabelas que contêm os campos listados na cláusula SELECT.
WHERE
    Especifica critérios de campo que devem ser atendidos por cada registro a ser incluído nos resultados.
ORDER BY 
    Especifica como classificar os resultados.
GROUP BY
    Em uma SQL que contém funções agregadas, lista campos que não são resumidos na cláusula SELECT.
HAVING
    Em uma SQL que contém funções agregadas, especifica condições que se aplicam aos campos resumidos na instrução SELECT.
  

                        DML - Linguagem de Manipulação de Dados
    Define os comandos utilizados para manipulação de dados no banco (INSERT, UPDATE e DELETE);

INSERT 
    Permite a inclusão de um ou mais registros em uma tabela.

UPDATE 
    É uma atualização dos dados de um ou mais registros de uma tabela.

DELETE
    Remove um ou mais registros de uma tabela.


                        DDL - Linguagem de Definição de Dados
    Define os comandos utilizados para criação (CREATE) de tabelas, views, índices, atualização dessas estruturas (ALTER), assim como a remoção (DROP);

CREATE Permite a criação de uma nova base de dados, tabela, índice, ou consulta armazenada.
DROP Permite remover (destruir) uma base de dados existente, tabela, índice ou view. 
ALTER Permite alterar um objeto de um banco de dados. 


                        DCL - Linguagem de Controle de Dados:   
    Define os comandos utilizados para controlar o acesso aos dados do banco, adicionando (GRANT) e removendo (REVOKE) permissões de acesso;

REVOKE
    Retira os privilégios de acesso do usuário dados usando o comando GRANT.
GRANT
    Concede aos usuários privilégios de acesso ao banco de dados.


                        DTL - Linguagem de Transação de Dados
    Define os comandos utilizados para gerenciar as transações executadas no banco de dados, como iniciar (BEGIN) uma transação, confirmá-la (COMMIT) ou desfazê-la (ROLLBACK).

COMMIT
    O comando indica o fim de cada transação, salvando o que foi feito na transação atual.
ROLLBACK
    O comando Rollback reverte uma transação. Na prática, restaura o banco de dados desde a última vez que o comando COMMIT foi aplicado, garantindo apenas até onde as alterações já foram salvas. É um comando crucial, que pode ser usado em situações de erro.
SAVEPOINT
O SAVEPOINT define um ponto de salvamento dentro de uma transação, funciona como um “ponto de segurança”. Tudo que é anterior a ele não pode ser descartado com o comando ROLLBACK, apenas o que vem após. 

