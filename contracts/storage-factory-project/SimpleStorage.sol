// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{

    uint256 public favNumber;

    // Functions
    function store(uint256 _newValue) public{
        favNumber = _newValue;
        
    }

    function retriveFavNumber() public view returns(uint256){
        return favNumber;
    }

    function add() public pure returns(uint256){
        return (1 + 1);
    }

}