CREATE TABLE LOGS
(
    ID INTEGER,
    NUM INTEGER,
    PRIMARY KEY (ID)
);

SELECT * FROM LOGS;

SELECT NUM, CONTNUM COONSECUTIVENUMS  FROM 
(
SELECT DISTINCT COUNT(NUM) AS CONTNUM, NUM
  FROM LOGS
 GROUP BY NUM
);

SELECT DISTINCT L1.NUM "ConsecutiveNums" 
  FROM LOGS L1, LOGS L2, LOGS L3
 WHERE L1.NUM = L2.NUM 
   AND L2.NUM = L3.NUM
   AND L1.ID = L2.ID+1 
   AND L1.ID = L3.ID+2;
  