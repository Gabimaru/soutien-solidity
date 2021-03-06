/*
Enoncé :
Même principe mais pour une division.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Divisor {
    function div(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        require(nb2 > 0, "Divisor: can not divide by0");
        return nb1 / nb2;
    }
}
