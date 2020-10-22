/*
Enoncé :
Même principe mais pour une division.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Divisor {
    
    function div(uint nb1, uint nb2) public pure returns(uint256) {
        return nb1 / nb2;
    }
    
}