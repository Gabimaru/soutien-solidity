/*
Enoncé :
Ecrivez un contrat SimpleStorage qui modifiera/affichera le contenu
d'une variable uint256 private storedData.
Une fonction get() retournera la valeur de storedData;
Une fonction set(uint256 value) modifiera la valeur de storedData par value passé en paramètre. '
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract SimpleStorage {

    uint private _storedData;

   function get() public view returns(uint) {
       return _storedData;
   }
   
   function set(uint _newData) public {
       _storedData = _newData;
   } 

}