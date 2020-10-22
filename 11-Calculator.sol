/*
Enoncé :
Créer un contrat Calculator.
Ce contrat devra posséder 4 fonctions: add, sub, mul, div.
Ces 4 fonctions prennent chacune en paramètres 2 uint.
Ces fonctions devront effectuer l'opération de calcul correspondante par les contrats déployés précédemment et retourner la valeur de l'opération.
Par exemple la fonction add du contrat Calculator devra appeler la fonction add du contrat Adder déployé précédemment.
Il faudra penser à importer le code/interface des différents contrats des exercices précédents dans Calculator.sol
afin que l'interface de chacun des contrats soient connues par le contrat Calculator
et déclarer les contrats Adder, Suber, Multiplier, Divisor dans notre contrat Calculator. Par exemple pour déclarer le contrat Adder dans Calculator.sol:
Adder adderContract = Adder(ADRESSE_ETHEREUM_DE_ADDER);
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;
import "./Adder.sol";
import "./Suber.sol";
import "./Multiplier.sol";
import "./Divisor.sol";

contract Calculator {
    
    Adder public adderContract;
    Suber public suberContract;
    Multiplier public multiplierContract;
    Divisor public divisorContract;
    
    constructor() public {
        adderContract = Adder(0x8A8365E6992ccBCe9C37698D989F2b874B2617D6);
        suberContract = Suber(0x44E8f1A9a111d9F3019331c62aC34F2A8b98ee7E);
        multiplierContract = Multiplier(0x0500ce4c5e4B3D2A0b90594a0C9fCB02b1FE8aC5);
        divisorContract = Divisor(0xaCb744aD3A333390A0E7603f3f3c1C29008f0Deb);
    }
    
    function add(uint nb1, uint nb2) public view returns(uint) {
        return adderContract.add(nb1, nb2);
    }
    
    function sub(uint nb1, uint nb2) public view returns(uint) {
        return suberContract.sub(nb1, nb2);
    }
    
    function mul(uint nb1, uint nb2) public view returns(uint) {
        return multiplierContract.mul(nb1, nb2);
    }
    
    function div(uint nb1, uint nb2) public view returns(uint) {
        return divisorContract.div(nb1, nb2);
    }
    
}