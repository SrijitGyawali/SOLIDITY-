// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMappingExample {
    // Define a mapping from an address to a uint
    mapping(address => uint) public balances;

    // Function to set a balance
    function setBalance(address _address, uint _value) public {
        balances[_address] = _value;
    }

    // Function to retrieve a balance (automatically provided by public mapping)
    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }

    

    // Function to delete a balance
    function removeBalance(address _address) public {
        delete balances[_address]; // This sets the value to the default (0 in this case)
    }
}
