// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Parent{
    string public name;

    function setName(string memory _name) public {
        name = _name;
    }
}


contract child is Parent{
    function getName() public view returns (string memory){
        return name;
    }

}