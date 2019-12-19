Ejemplo #2
Predicados, Hechos y Reglas:


sucesor(1,2).

sucesor(2,3).

sucesor(3,4).

sucesor(4,5).

sucesor(5,6).

sucesor(6,7).

suma(1,X,R):-sucesor(X,R).

suma(N,X,R):-sucesor(M,N),suma(M,X,R1),sucesor(R1,R).

Aquí podemos apreciar como suma es una regla que depende en gran medida de la condición sucesor. 
En la segunda regla de suma se observa que existe mas de una condición, por tanto estas van separadas por coma; podemos observar también que se realiza una operación recursiva. 
Esta misma sentencia traducida en un lenguaje de programación como Java quedaría:

int suma(int N, int X, int R)
{
      if ( N == 1 )
      {
            sucesor(X,R);
      }
      else
      {
            sucesor(M,N);
            suma(M,X,R1);
            sucesor(R1,R2);
      }
}

Obsérvese que en la segunda línea del bloque else se realiza un llamado recursivo al método suma, de forma tal, que se realiza la operación disminuyendo el valor de N hasta que este se hace 1, en el cual termina la recursividad y se origina la respuesta.
