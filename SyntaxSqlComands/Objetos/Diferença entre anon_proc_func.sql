Bloco Anônimo			
 -----------------		
| [DECLARE]	  |		
|		  |			
|	  	  |	
| BEGIN		  |	
|    --COMANDOS	  |	
| 		  |	
| [EXCEPTION]     |		
|		  |	
| END;	          |	
|	       	  |	
 -----------------

Procedure
 -----------------
| PROCEDURE name  |	
| IS		  |			
|	  	  |
| BEGIN		  |
|    --COMANDOS	  |
| 		  |
| [EXCEPTION]     |	
|		  |
| END;	          |
|	       	  |
 -----------------

Function
 -----------------
| FUNCTION name   |	
| RETURN datatype |			
| IS	  	  |
| BEGIN		  |
|    --COMANDOS	  |
|    RETURN value |
| [EXCEPTION]     |	
|		  |
| END;	          |
|	       	  |
 -----------------


Diferença de Bloco Anônimo,Procedure e Function:

- Bloco Anônimo apenas é usado apenas uma vez e não fica salvo no banco;
- Function sempre retorna um valor, e fica salvo no banco como um objeto;
- Procedure apenas envia valores e pode ou não os retornar com um valor diferente, 
e fica salva no banco como um objeto;