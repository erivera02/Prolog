seleccion(leche).
seleccion(carne).
seleccion(cria).

%Leche
%Necesita_pasto_especial
pasto_especial(leche,si).
pasto_especial(leche,no).

%Precio
preciosi(si,precio).
preciono(no,precio).

%Para_el_precio
precio_ganado(precio,mayor).
precio_ganado(precio,menor).
precio_ganadoo(precio,mayorr).
precio_ganadoo(precio,menorr).

%Produccion
produccion(mayor,produccion).
produccion(menor,produccion).
produccion(mayorr,produccion).
produccion(menorr,produccion).

%Para_la_produccion
hoja(produccion,alta).
hoja(produccion,mediana).
hoja(produccion,altas).
hoja(produccion,media).
hoja(produccion,alto).
hoja(produccion,bajo).

%Resultados
resultado(alta,normando).
resultado(mediana,simmental).
resultado(altas,holstein).
resultado(media,tudanca).
resultado(alto,jersey).
resultado(bajo,pasiega).

%Carne
%Tipo_de_produccion
tipo_de_produccion(carne,calidad).
tipo_de_produccion(carne,cantidad).

%Cuidados
cuidados(calidad,cuidado).
%Para_cuidados
t_cuidados(cuidado,altoss).
t_cuidados(cuidado,medioss).

%Alimentacion
alimento(cantidad,alimentacion).
%Para_alimentacion
t_alimentacion(alimentacion,exhaustiva).
t_alimentacion(alimentacion,regular).

%Respuestas
respuesta(altoss,angus).
respuesta(medioss,charolais).
respuesta(exhaustiva,limousin).
respuesta(regular,nelore).

%Cria
%Que_ganado_desea
que_ganado_desea(cria,especial).
que_ganado_desea(cria,prodccuionn).

%Para_especial
espec(especial,gestacion).
%periodo_de_gestacion
periodo_de_gestacion(gestacion,altoo).
periodo_de_gestacion(gestacion,medioo).


%Para_produccion
norm(prodccuionn,cuidadoss).
%Cuidados
cuidados_ganado(cuidadoss,especiales).
cuidados_ganado(cuidadoss,normales).

%Respuestas
respuestas(altoo,braford).
respuestas(medioo,brangus_rojo).
respuestas(especiales,brahmann).
respuestas(normales,razas_criollas).

%Preguntas 
%Para_leche
%mejor_opcion(leche,si,precio,mayor,produccion,alta,R).
%mejor_opcion(leche,si,precio,mayor,produccion,mediana,R).
%mejor_opcion(leche,si,precio,menor,produccion,altas,R).
%mejor_opcion(leche,si,precio,menor,produccion,media,R).
%mejor_opcion(leche,no,precio,mayorr,produccion,alto,R).
%mejor_opcion(leche,no,precio,menorr,produccion,bajo,R).

%Para_Carne
%mejor_produccion(carne,calidad,cuidado,altoss,RE).
%mejor_produccion(carne,calidad,cuidado,medioss,RE).
%mejor_produccion(carne,cantidad,alimentacion,exhaustiva,RE).
%mejor_produccion(carne,cantidad,alimentacion,regular,RE).

%Para_cria
%mejor_ganado(cria,especial,gestacion,altoo,RES).
%mejor_ganado(cria,especial,gestacion,medioo,RES).
%mejor_ganado(cria,prodccuionn,cuidadoss,especiales,RES).
%mejor_ganado(cria,prodccuionn,cuidadoss,normales,RES).


%Reglas
%Para_leche
mejor_opcion(A,SI,P,MA,PR,AL,R):-seleccion(A),pasto_especial(A,SI),preciosi(SI,P),precio_ganado(P,MA), produccion(MA,PR), hoja(PR,AL), write('El ganado que se ajusta a su necesidad es el:'),resultado(AL,R).
mejor_opcion(A,SI,P,MA,PR,MIS,R):-seleccion(A),pasto_especial(A,SI),preciosi(SI,P),precio_ganado(P,MA), produccion(MA,PR), hoja(PR,MIS), write('El ganado que se ajusta a su necesidad es el:'),resultado(MIS,R).
mejor_opcion(A,SI,P,ME,PR,AS,R):-seleccion(A),pasto_especial(A,SI),preciosi(SI,P),precio_ganado(P,ME), produccion(ME,PR), hoja(PR,AS), write('El ganado que se ajusta a su necesidad es el:'),resultado(AS,R).
mejor_opcion(A,SI,P,ME,PR,MED,R):-seleccion(A),pasto_especial(A,SI),preciosi(SI,P),precio_ganado(P,ME), produccion(ME,PR), hoja(PR,MED), write('El ganado que se ajusta a su necesidad es el:'),resultado(MED,R).
mejor_opcion(A,NO,P,M,PR,ALT,R):-seleccion(A),pasto_especial(A,NO),preciono(NO,P),precio_ganadoo(P,M), produccion(M,PR), hoja(PR,ALT), write('El ganado que se ajusta a su necesidad es el:'),resultado(ALT,R).
mejor_opcion(A,NO,P,MR,PR,BA,R):-seleccion(A),pasto_especial(A,NO),preciono(NO,P),precio_ganadoo(P,MR), produccion(MR,PR), hoja(PR,BA), write('El ganado que se ajusta a su necesidad es el:'),resultado(BA,R).

%Para_Carne
mejor_produccion(B,CAL,CU,AT,RE):-seleccion(B), tipo_de_produccion(B,CAL), cuidados(CAL,CU), t_cuidados(CU,AT), write('El ganado que se ajusta a su necesidad es el:'),respuesta(AT,RE).
mejor_produccion(B,CAL,CU,MOD,RE):-seleccion(B), tipo_de_produccion(B,CAL), cuidados(CAL,CU), t_cuidados(CU,MOD), write('El ganado que se ajusta a su necesidad es el:'),respuesta(MOD,RE).
mejor_produccion(B,CAN,ALI,EX,RE):-seleccion(B), tipo_de_produccion(B,CAN), alimento(CAN,ALI), t_alimentacion(ALI,EX), write('El ganado que se ajusta a su necesidad es el:'),respuesta(EX,RE).
mejor_produccion(B,CAN,ALI,REG,RE):-seleccion(B), tipo_de_produccion(B,CAN), alimento(CAN,ALI), t_alimentacion(ALI,REG), write('El ganado que se ajusta a su necesidad es el:'),respuesta(REG,RE).

%Para_cria
mejor_ganado(C,ES,PG,TS,RES):-seleccion(C), que_ganado_desea(C,ES), espec(ES,PG), periodo_de_gestacion(PG,TS), write('El ganado que se ajusta a su necesidad es el:'),respuestas(TS,RES).
mejor_ganado(C,ES,PG,MI,RES):-seleccion(C), que_ganado_desea(C,ES), espec(ES,PG), periodo_de_gestacion(PG,MI), write('El ganado que se ajusta a su necesidad es el:'),respuestas(MI,RES).
mejor_ganado(C,PROD,CUI,ESP,RES):-seleccion(C), que_ganado_desea(C,PROD), norm(PROD,CUI), cuidados_ganado(CUI,ESP), write('El ganado que se ajusta a su necesidad es el:'),respuestas(ESP,RES).
mejor_ganado(C,PROD,CUI,NOR,RES):-seleccion(C), que_ganado_desea(C,PROD), norm(PROD,CUI), cuidados_ganado(CUI,NOR), write('El ganado que se ajusta a su necesidad es el:'),respuestas(NOR,RES).
