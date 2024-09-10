// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract ViewandPure{
    uint256 public x =1;



//view used in case where we read from the contract but not modify it
    function addTox(uint256 y) public view  returns (uint256){
        return x+y;
    }

//pure used in case where we donot read nor modify the state from the contract
    function add(uint256 i,uint256 j) public pure   returns (uint256){
        return i+j;
    }
}

