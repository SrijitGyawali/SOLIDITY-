// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract A{
    function foo() public pure virtual returns (string memory){
        return "A";
    }
}


contract B{
    function bar() public pure virtual returns (string memory){
        return "B";
    }
}

contract C is A,B{
    function fooBar() public pure returns (string memory){
        return string(abi.encodePacked(foo(), bar()));
    }
}                                                                                   