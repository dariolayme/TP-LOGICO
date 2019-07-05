% Punto 1 %

candidato(frank,partidoRojo).
candidato(claire,partidoRojo).
candidato(catherine,partidoRojo).

candidato(garret,partidoAzul).
candidato(linda,partidoAzul).
asdasd
candidato(jackie,partidoAmarillo).
candidato(seth,partidoAmarillo).
candidato(heather,partidoAmarillo).

edad(frank,50).
edad(claire,52).
edad(garret,64).
edad(jackie,38).
edad(linda,30).
edad(catherine,59).
edad(heather,50).

sePostula(partidoAzul,buenosAires).
sePostula(partidoAzul,chaco).
sePostula(partidoAzul,tierraDelFuego).
sePostula(partidoAzul,sanLuis).
sePostula(partidoAzul,neuquen).

sePostula(partidoRojo,buenosAires).
sePostula(partidoRojo,santaFe).
sePostula(partidoRojo,cordoba).
sePostula(partidoRojo,chubut).
sePostula(partidoRojo,tierraDelFuego).
sePostula(partidoRojo,sanLuis).

sePostula(partidoAmarillo,chaco).
sePostula(partidoAmarillo,formosa).
sePostula(partidoAmarillo,tucuman).
sePostula(partidoAmarillo,salta).
sePostula(partidoAmarillo,santaCruz).
sePostula(partidoAmarillo,laPampa).
sePostula(partidoAmarillo,corrientes).
sePostula(partidoAmarillo,misiones).
sePostula(partidoAmarillo,buenosAires).

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
    sePostula(Candidato1,Provincia),
    sePostula(Candidato2,Provincia),
    habitantesDe(Provincia,Cantidad),
    Candidato1 \= Candidato2,
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