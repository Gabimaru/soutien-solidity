/*
Enoncé :
Ecrivez un contrat Contact qui permettra d'enregistrer ou de récupérer des info sur un contact en fonction de son adresse Ethereum.
Les informations pour chaque contact seront stockées dans une struct avec les champs suivants: string name, string email, string phone.
Un mapping nous donnera la correspondance entre 1 adresse Ethereum et ces informations.
Une fonction addContact nous permettra d'ajouter un nouveau contact avec l'adresse Ethereum, le nom, l'email
et le téléphone du contact en arguments à cette fonction.
Une fonction getContact(address _addr) nous permettra de récupérer les informations d'un contact en fonction d'une addresse Ethereum.
Pour que la fonction getContact(address _addr) fonctionne il faudra ajouter pragma experimental ABIEncoderV2; comme directive de pragma.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Contact {
    
    struct Address {
        uint16 nbRue;
        string nomRue;
        string ville;
        string Pays;
    }
    
    struct Info {
        string name;
        uint8 age;
        string email;
        string phone;
        // Address addresse;
    }
    
    mapping(address => Info) private _contacts;
    
    constructor() public {
        _contacts[0xD89D7729BF2284C2936171C2a11DC905BB4A678C] = Info("Bob", 50, "bob@email.com", "0100000000");
    }
    
    function getContact(address _addr) public view returns(Info memory) {
        return _contacts[_addr];
    }
    
    function setContact(address _addr, string memory _name, uint8 _age, string memory _email, string memory _phone) public {
        _contacts[_addr] = Info(_name, _age, _email, _phone);
    }

}