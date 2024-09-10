// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//Three types of variable in Solidity
/* Local: declared inside a function inside the contract,not stord on blockchain
Global: give information about the  blockchain
State: declared outside a function , stored inside a blockchain
 */

contract variable {
    //State variable
    uint64 state = 5;
    bool public defaultbool;
    string public text = "OHH MY GOD";
}