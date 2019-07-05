% Punto 1 %

candidato(frank,rojo).
candidato(claire,rojo).
candidato(catherine,rojo).

candidato(garrett,azul).
candidato(linda,azul).
candidato(jackie,amarillo).
candidato(seth,amarillo).
candidato(heather,amarillo).

edad(frank,50).
edad(claire,52).
edad(garrett,64).
edad(jackie,38).
edad(linda,30).
edad(catherine,59).
edad(heather,50).

sePostulaEn(azul,buenosAires).
sePostulaEn(azul,chaco).
sePostulaEn(azul,tierraDelFuego).
sePostulaEn(azul,sanLuis).
sePostulaEn(azul,neuquen).

sePostulaEn(rojo,buenosAires).
sePostulaEn(rojo,santaFe).
sePostulaEn(rojo,cordoba).
sePostulaEn(rojo,chubut).
sePostulaEn(rojo,tierraDelFuego).
sePostulaEn(rojo,sanLuis).

sePostulaEn(amarillo,chaco).
sePostulaEn(amarillo,formosa).
sePostulaEn(amarillo,tucuman).
sePostulaEn(amarillo,salta).
sePostulaEn(amarillo,santaCruz).
sePostulaEn(amarillo,laPampa).
sePostulaEn(amarillo,corrientes).
sePostulaEn(amarillo,misiones).
sePostulaEn(amarillo,buenosAires).

habitantesDe(buenosAires,15355000).
habitantesDe(chaco,1143201).
habitantesDe(tierraDelFuego,160720).
habitantesDe(sanLuis,489255).
habitantesDe(neuquen,637913).
habitantesDe(santaFe,3397532).
habitantesDe(cordoba,3567654).
habitantesDe(chubut,577466).
habitantesDe(formosa,527895).
habitantesDe(tucuman,1687305).
habitantesDe(salta,1333365).
habitantesDe(santaCruz,273964).
habitantesDe(laPampa,349299).
habitantesDe(corrientes,992595).
habitantesDe(misiones,1189446).

% El partido violeta no tiene candidatos ,
% Peter no es candidato del partido Amarillo,
% El partidoRojo Finalmente no se presentará en Formosa.
% no los agrego por el principio de universo cerrado. %

% Punto 2 %

esPicante(Provincia) :- 
    compiteEn(Partido1,Provincia),
    compiteEn(Partido2,Provincia),
    habitantesDe(Provincia,Cantidad),
    Partido1 \= Partido2,
    Cantidad>1000000.

% Punto 3 % 

% intencionDeVotoEn(Provincia, Partido, Porcentaje)
intencionDeVotoEn(buenosAires, rojo, 40).
intencionDeVotoEn(buenosAires, azul, 30).
intencionDeVotoEn(buenosAires, amarillo, 30).
intencionDeVotoEn(chaco, rojo, 50).
intencionDeVotoEn(chaco, azul, 20).
intencionDeVotoEn(chaco, amarillo, 0).
intencionDeVotoEn(tierraDelFuego, rojo, 40).
intencionDeVotoEn(tierraDelFuego, azul, 20).
intencionDeVotoEn(tierraDelFuego, amarillo, 10).
intencionDeVotoEn(sanLuis, rojo, 50).
intencionDeVotoEn(sanLuis, azul, 20).
intencionDeVotoEn(sanLuis, amarillo, 0).
intencionDeVotoEn(neuquen, rojo, 80).
intencionDeVotoEn(neuquen, azul, 10).
intencionDeVotoEn(neuquen, amarillo, 0).
intencionDeVotoEn(santaFe, rojo, 20).
intencionDeVotoEn(santaFe, azul, 40).
intencionDeVotoEn(santaFe, amarillo, 40).
intencionDeVotoEn(cordoba, rojo, 10).
intencionDeVotoEn(cordoba, azul, 60).
intencionDeVotoEn(cordoba, amarillo, 20).
intencionDeVotoEn(chubut, rojo, 15).
intencionDeVotoEn(chubut, azul, 15).
intencionDeVotoEn(chubut, amarillo, 15).
intencionDeVotoEn(formosa, rojo, 0).
intencionDeVotoEn(formosa, azul, 0).
intencionDeVotoEn(formosa, amarillo, 0).
intencionDeVotoEn(tucuman, rojo, 40).
intencionDeVotoEn(tucuman, azul, 40).
intencionDeVotoEn(tucuman, amarillo, 20).
intencionDeVotoEn(salta, rojo, 30).
intencionDeVotoEn(salta, azul, 60).
intencionDeVotoEn(salta, amarillo, 10).
intencionDeVotoEn(santaCruz, rojo, 10).
intencionDeVotoEn(santaCruz, azul, 20).
intencionDeVotoEn(santaCruz, amarillo, 30).
intencionDeVotoEn(laPampa, rojo, 25).
intencionDeVotoEn(laPampa, azul, 25).
intencionDeVotoEn(laPampa, amarillo, 40).
intencionDeVotoEn(corrientes, rojo, 30).
intencionDeVotoEn(corrientes, azul, 30).
intencionDeVotoEn(corrientes, amarillo, 10).
intencionDeVotoEn(misiones, rojo, 90).
intencionDeVotoEn(misiones, azul, 0).
intencionDeVotoEn(misiones, amarillo, 0).

compiteEn(UnCandidato,Provincia) :-
    candidato(UnCandidato,Partido),
    sePostulaEn(Partido,Provincia).


porcentajeDeEn(UnCandidato,UnaProvincia,Porcentaje) :-
    compiteEn(UnCandidato,UnaProvincia),
    intencionDeVotoEn(UnaProvincia,_,Porcentaje).

leGanaA(UnCandidato,OtroCandidato,Provincia) :-
    compiteEn(UnCandidato,Provincia),
    candidato(OtroCandidato,_),
    not(sePostulaEn(OtroCandidato,Provincia)).

leGanaA(UnCandidato,OtroCandidato,Provincia) :-
    porcentajeDeEn(UnCandidato,Provincia,Porcentaje1),
    porcentajeDeEn(OtroCandidato,Provincia,Porcentaje2),
    OtroCandidato\=UnCandidato,
    Porcentaje1>Porcentaje2.

leGanaA(UnCandidato,OtroCandidato,Provincia) :-
    candidato(UnCandidato,Partido),
    candidato(OtroCandidato,Partido),
    sePostulaEn(Partido,Provincia).



%P4
/*porcentajeDeEn(UnCandidato,UnaProvincia,Porcentaje) :-
    sePostulaEn(UnCandidato,UnaProvincia,Partido),
    intencionDeVotoEn(UnaProvincia,Partido,Porcentaje).

gana(UnaProvincia,UnCandidato) :-
    porcentajeDeEn(UnCandidato,UnaProvincia,Porcentaje),
    forall(intencionDeVotoEn(UnaProvincia,_,OtroPorcentaje), Porcentaje >= OtroPorcentaje).


elGranCandidato(UnCandidato) :-
    candidato(UnCandidato,Partido),
    forall(compiteEn(Partido,UnaProvincia),gana(UnaProvincia,UnCandidato)).
*/

  
esMasJovenQue(UnCandidato,OtroCandidato):-
    edad(UnCandidato,Edad1),
    edad(OtroCandidato,Edad2),
    Edad2 >= Edad1.
  
candidatoMasJovenDelPartido(UnCandidato):-
    candidato(UnCandidato,UnPartido),
    forall((candidato(OtroCandidato,UnPartido), OtroCandidato \= UnCandidato), esMasJovenQue(UnCandidato,OtroCandidato)).
  
elGranCandidato(UnCandidato):-
    forall((sePostulaEn(UnCandidato,UnaProvincia),leGanaA(UnCandidato,_,UnaProvincia)),candidatoMasJovenDelPartido(UnCandidato)).
%-----

compiteEnProvincia(UnCandidato, UnaProvincia):-
    esCandidatoDel(UnCandidato, UnPartido),
    sePostulaEn(UnPartido, UnaProvincia).
  
  esMasJovenQue(UnCandidato,OtroCandidato):-
      edad(UnCandidato,Edad1),
      edad(OtroCandidato,Edad2),
      Edad2 >= Edad1.
  
  candidatoMasJovenDelPartido(UnCandidato):-
      esCandidatoDel(UnCandidato,UnPartido),
      forall((esCandidatoDel(OtroCandidato,UnPartido), OtroCandidato \= UnCandidato), esMasJovenQue(UnCandidato,OtroCandidato)).
  
  elGranCandidato(UnCandidato):-
      forall(compiteEnProvincia(UnCandidato,UnaProvincia),leGanaA(UnCandidato,_,UnaProvincia)),
      candidatoMasJovenDelPartido(UnCandidato).