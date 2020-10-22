/*
Enoncé :
Même principe mais pour une soustraction.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Suber {
    
    function sub(uint nb1, uint nb2) public pure returns(uint) {
        require(nb1 > nb2, 'no negative value here.');
        return nb1 - nb2;
    }
    
}