// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*Think of them as a layer of logic that you can "wrap" around
 afunction to enforce certain conditions before or after the function's main logic is executed.*/

contract ExampleContract {
    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender==owner,"You are not the owner");
        _;
    }


    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}