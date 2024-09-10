// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


/*In Solidity, the immutable keyword is used for variables that are assigned a value at construction time 
and cannot be changed afterward. Unlike constant variables, which must be initialized at compile-time, 
immutable variables can be assigned in the constructor, making them more flexible for certain use cases.
*/

pragma solidity ^0.8.0;

contract ImmutableExample {
    // Immutable variables of value types
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_NUMBER;
    bytes32 public immutable MY_BYTES;

    // Constructor to initialize the immutable variables
    constructor(address _myAddress, uint256 _myNumber, bytes32 _myBytes) {
        MY_ADDRESS = _myAddress;
        MY_NUMBER = _myNumber;
        MY_BYTES = _myBytes;
    }

    function getMyAddress() public view returns (address) {
        return MY_ADDRESS;
    } 

    function getMyNumber() public view returns (uint256) {
        return MY_NUMBER;
    }

    function getMyBytes() public view returns (bytes32) {
        return MY_BYTES;
    }
}
