Feature:

 Como jugador 
 Quiero otorgar coordenadas inicales e instrucciones a mi auto.
 Para tener un control del recorrido de mi auto personalizado.

Scenario: ingresar coordenadas iniciales
Given Cuando estoy en la pagina principal
And Ingreso las coordenadas iniciales 5,2 y la cadena de instrucciones "DADAA" en los input "PosX" y "PosY" y "instrucciones"
When Presiono el Boton "submit"
Then Deberia ir a la pagina de resultados.







