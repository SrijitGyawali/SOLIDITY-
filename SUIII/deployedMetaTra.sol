// SPDX-License-Identifier: MIT
pragma solidity 0.8.x;

contract map{
    mapping(address => uint)public balances;

    function setBalance(address  _address, uint _value) public {
         balances[_address] = _value;
    }


    function getBalance(address _address) public view returns(uint){
       return  balances[_address]; 
    }

    function removeBal(address _address) public{
        delete balances[_address];
    } 

}