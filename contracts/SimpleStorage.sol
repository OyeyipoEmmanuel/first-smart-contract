// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
    //Data types - bool, uint, int, address, bytes

    // To Create a variable - dataype variable_name = value
    // bool hasFavouriteNumber = true;
    // uint256 favouriteNumber = 123;
    // string favouriteNumberInText = "Hello World!";
    // int256 favouriteInt = -3;
    // address myAddress = 0xA2b61636239B158f795319e5e2227B9dAe4053cd;
    // bytes32 favByte = "cat"

    uint256 public favNumber;

    // Functions
    function store(uint256 _newValue) public{
        favNumber = _newValue;
        favNumber = favNumber + 1;
    }

    // A function that has "view" means we're just gonna read something from the function/contract. It also disallows any modification of state
    // A function that has pure will not allow you to read or modify a state. It disallows both read and modification of state in a function

    // Calling view or pure function is free unless you're calling it in a function that cost gas (i.e in a function that modifies the blockchain)
    function retriveFavNumber() public view returns(uint256){
        return favNumber;
    }

    function add() public pure returns(uint256){
        return (1 + 1);
    }

}