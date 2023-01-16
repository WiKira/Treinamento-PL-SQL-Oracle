/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           Oracle 11g                                      */
/* Project file:          Project1.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2023-01-16 11:59                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT TESTE_SALARIOS_TESTE_FUNCIONARIOS;

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT TESTE_SETORES_TESTE_FUNCIONARIOS;

/* ---------------------------------------------------------------------- */
/* Drop table "TESTE_FUNCIONARIOS"                                        */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT ;

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT ;

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT ;

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT ;

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT ;

ALTER TABLE TESTE_FUNCIONARIOS DROP CONSTRAINT PK_TESTE_FUNCIONARIOS;

DROP TABLE TESTE_FUNCIONARIOS;

/* ---------------------------------------------------------------------- */
/* Drop table "TESTE_SALARIOS"                                            */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE TESTE_SALARIOS DROP CONSTRAINT NN_TESTE_SALARIOS_niveisSal;

ALTER TABLE TESTE_SALARIOS DROP CONSTRAINT NN_TESTE_SALARIOS_salario;

ALTER TABLE TESTE_SALARIOS DROP CONSTRAINT PK_TESTE_SALARIOS;

DROP TABLE TESTE_SALARIOS;

/* ---------------------------------------------------------------------- */
/* Drop table "TESTE_SETORES"                                             */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE TESTE_SETORES DROP CONSTRAINT ;

ALTER TABLE TESTE_SETORES DROP CONSTRAINT ;

ALTER TABLE TESTE_SETORES DROP CONSTRAINT ;

ALTER TABLE TESTE_SETORES DROP CONSTRAINT ;

DROP TABLE TESTE_SETORES;
