Ejemplo #5

Definir un árbol binario y sus recorridos preorder, inorder y postorder.

es_arbol_binario(nil).
es_arbol_binario(t(Izquierda, _, Derecha)) :- es_arbol_binario(Izquierda), es_arbol_binario(Derecha).

preorder(nil, []).
preorder(t(Izquierda, Padre, Derecha), Lista) :- preorder(Izquierda,ListaL),
                           						 preorder(Derecha, ListaR),
                           						 append([Padre | ListaL], ListaR, Lista).

inorder(nil, []).
inorder(t(Izquierda, Padre, Derecha), Lista) :- inorder(Izquierda, ListaL),
                         						inorder(Derecha, ListaR),
                         						append(ListaL, [Padre | ListaR],Lista).

postorder(nil, []).
postorder(t(Izquierda, Padre, Derecha), Lista) :- postorder(Izquierda, ListaL),
                              					  postorder(Derecha, ListaR),
                              					  append(ListaL, ListaR, R1),
                              					  append(R1, [Padre], Lista).

mi_arbol_binario(t(t(t(nil, 2, nil), 4, t(nil, 5, nil)), 6, t(t(nil, 7, nil), 9, nil))).