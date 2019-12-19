Ejemplo #1
Es posible construir en prolog consultas complejas con los operadores AND(,), OR(;) y NOT(not) de la siguiente forma:
legusta(pepe,pesca).

legusta(maria,bailar).

legusta(ana,pesca).

legusta(pepe,musica).

legusta(maria,musica).

legusta(ana,bailar).

Se pueden realizar las siguientes preguntas sobre la base de información:

      - ¿Le gusta la música a Pepe y a Maria? :         ?-legusta(pepe,musica),legusta(maria,musica).

      - ¿Le gusta bailar a Pepe o a Maria le gusta la música?:           ?-legusta(pepe,musica);legusta(maria,musica).

      - ¿Le gusta bailar a Pepe y a Maria no le gusta la música?:      ?-legusta(pepe,musica),not(legusta(maria,musica)).

Para que estas consultas funcionen de forma adecuada es necesario no dejar espacios entre los operadores.