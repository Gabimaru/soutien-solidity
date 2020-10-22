/*
Enoncé :Ecrivez un contrat Adder.
Ce contrat devra posséder une fonction add(uint256 nb1, uint256 nb2) qui retournera la somme des 2 arguments passés à la fonction.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Adder {
    
    function add(uint nb1, uint nb2) public pure returns(uint256) {
        return nb1 + nb2;
    }
    
}