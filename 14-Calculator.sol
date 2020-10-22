/*
Enoncé :
Lisez entièrement l'exercice avant de commencer.

Rentabiliser le contrat Calculator, toutes les opérations de calculs,
cad l'appel des fonctions add, sub, mul, div du contrat Calculator, couteront désormais 0.01 CALK.
Pour cela il faudra que l'utilisateur approve l'adresse du contrat Calculator dans CalcToken.
Ainsi lors d'une opération de calcul un transferFrom sera effectué
par le contrat Calculator de 0.01 CALK de la balance de l'utilisateur vers la balance du contrat Calculator (et non pas celle du bénéficiaire, car oui!
un contrat peut aussi posséder des tokens). Pour info un contrat peut récupérer sa propre adresse avec address(this);
Il faudra ajouter une fonction withdraw qui fera un transfer des tokens que possèdent le contrat vers un bénéficiaire.
Le bénéficiaire sera le seul à pouvoir appeler cette fonction withdraw.
Il faudra créer un bénéficiaire qui sera le seul à pouvoir withdraw les tokens et ainsi les recevoir.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract {

}

/*
Correction :

*/