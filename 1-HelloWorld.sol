/*
Enoncé :

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract HelloWorld {

    string private _coucou = "Hello World !";

    function hello() public view returns (string memory) {
        return _coucou;
    }

}

/*
Correction :

*/