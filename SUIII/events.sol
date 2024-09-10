// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;




/* ogging mechanism that allows smart contracts to emit messages to the Ethereum blockchain. 
Events are crucial for interacting with decentralized applications (DApps) because they 
allow contracts to communicate with the outside world without directly changing the state of the contract.
*/
contract ExampleContract {
    //Declare the event
    event FundsDeposited(address indexed from,uint amount);


    //Function to emit that event 
    function depositeFunds() public payable {
        emit FundsDeposited(msg.sender, msg.value);
    }
}



/*Real world application of events;
   Tracking Transaction
   Triggering Off-Chain Actions
   Auditing and Analytics
   Signaling State Changes
   */

contract Test{
    event Deposit(
        address indexed from,
        bytes32 indexed id,
        uint value
    );

    function deposit(bytes32 id) public  payable {
        emit Deposit(msg.sender,id,msg.value);
    }
}