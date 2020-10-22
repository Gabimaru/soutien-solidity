// Enoncé : Ecrivez un contrat TheOne. Ce contrat devra posséder une fonction one qui retournera le nombre 1 lorsqu'elle sera appelée.

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract TheOne {

    uint un = 1;
    
    function one() public view returns (uint) {
        return un;
    }
    
}

/* Correction :

contract TheOne {
  // Quel est le type de mes variables ?
  // Quel est le type des arguments et de la valeur de retour de mes fonctions ?
  // Est ce que ma fonction peut recevoir de l'ether ? (payable ou pas ?)
  // Quel est la visibilité de mes variables et de mes fonctions ? (rien, view ou pure ?)
  // Quel est la visibilité de ma function
  function one() public pure returns (uint256) {
    return 1;
  }
}
*/