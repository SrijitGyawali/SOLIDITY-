// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//uses of interface:  Cross Contract Communication, interacting with external contracts
//use for good code practice and reusability, clean code

interface YourWallet{
    function deposit(uint amount) external ;
    function withdraw(uint amount) external;
    function getBalance() external view returns (uint);    
}

contract MyWallet is YourWallet {

    uint private balance;

    function deposit(uint amount) external override {
        balance += amount;
    }

    function withdraw(uint amount) external override {
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
    }

    function getBalance() external view returns (uint) {
        return balance;
    }

}