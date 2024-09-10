// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./tc2.sol";

contract ErrorHandling {

    uint private balance;

    

    // Function to load the wallet with a specified amount
    function loadWallet(uint amount) public {
        require(amount > 0, "Amount must be greater than zero");
        balance += amount;
    }

    // Function to view the current balance
    function getBalance() public view returns (uint) {
        return balance;
    }

    // Function to transfer funds (internal, not external call)
    function transfer(uint amount) public {
        require(amount <= balance, "Insufficient Balance");
        balance -= amount;
    }

    // Function to withdraw funds and attempt to send them to an external contract
    function withdrawToExternal(address recipientAddress, uint amount) public {
        require(amount <= balance, "Insufficient Balance");

        ExternalRecipient recipient = ExternalRecipient(recipientAddress);

        try recipient.receiveFunds(amount) returns (string memory result) {
            // If the external call succeeds, update the balance and log success
            balance -= amount;
            emit WithdrawalSuccess(result);
        } catch Error(string memory reason) {
            // If the external call fails, log the failure reason
            emit WithdrawalFailed(reason);
        } catch {
            // Catch any other errors (e.g., out-of-gas, other low-level errors)
            emit WithdrawalFailed("Unknown error occurred");
        }
    }

    // Events to log success and failure
    event WithdrawalSuccess(string message);
    event WithdrawalFailed(string reason);
}
