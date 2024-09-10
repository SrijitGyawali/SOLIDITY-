// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// that a function or an address can receive Ether.
//the only functions that can accept and process Ether transfers.
//Crowdfunding Platforms: Allowing users to send Ether to fund a project.

/*Escrow Services: Accepting and holding Ether until certain conditions are met.
Decentralized Exchanges (DEXs): Users can send Ether in exchange for tokens.
Smart Contract Wallets: Receiving Ether and allowing authorized parties to manage withdrawals.*/

contract PayableExample{

    uint private balance;
    function deposit(uint amount) external payable   {
        balance +=amount;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }
}