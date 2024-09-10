// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract A{
    //virtual show be used for function that is going to be overridden by a child contract
    function sayHello() public pure virtual returns(string memory){
        return "Hello from A";
    }
}

contract B{
    function sayHello() public pure virtual returns (string memory){
        return "Hello from B";
    }
}

// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.
contract C is A,B{
    function sayHello() public pure override(A,B) returns (string memory){
        return super.sayHello();
    }
}
