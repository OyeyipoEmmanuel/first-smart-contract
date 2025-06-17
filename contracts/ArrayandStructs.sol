// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayandStructs{
    uint256 public favNumber;

    // Struct

    // People public person = People({
    //     favNumber: 2,
    //     name: "Emmanuel"
    // });
    struct People {
        uint256 favNumber;
        string name;
    }

    // Array
    People[] public people;

    // Mapping
    mapping(string => uint256) public nameToFavNumber;

    function addPerson(string memory _name, uint256 _favNumber) public{
        People memory person = People({favNumber: _favNumber, name: _name});
        people.push(person);

        nameToFavNumber[_name] = _favNumber;
    }
}