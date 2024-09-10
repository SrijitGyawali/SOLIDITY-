// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract error{

    uint private  balance;




    // Function to load the wallet with a specified amount
    function loadWallet(uint amount) public {
        // Ensure the amount is greater than zero
        require(amount > 0, "Amount must be greater than zero");

        // Update the balance with the loaded amount
        balance += amount;
    }

    // Function to view the current balance
    function getBalance() public view returns (uint) {
        return balance;
    }


    //require method for error halding revert the state in case of not matching the condition
    /*Purpose: Used to validate conditions such as inputs or contract state. If the condition is not met,
     the function will revert, and any gas used after the failure point will be refunded.
     Usage: Often used for input validation, ensuring that certain conditions are met before the function logic is executed.*/

     //Example 1 
    /*function call() public{
        count++;
        require(msg.sender == owner,'Caller is not the owner');
    }*/



    //Example 2 : if the amount is greater than the balnce it throws error
    function transfer(uint amount) public {
        require(amount<=balance,'Insufficient Balance');
        balance -= amount;
    }

    //assert: using for checking the conditons that should never be fail
    //all gas fees will be used inspite of the faliure of the transaction
    /*function decrement(uint value) public {
        balance -=value;
        assert(balance>=0);
    }*/


    //revert:

    function withdraw(uint amount) public {
        if (balance<=amount) {
            revert("Insufficient Funds");
        }
        balance -= amount;
    }    
}