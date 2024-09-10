// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract cont{
    uint256 public constant MY_UINT= 150;

    // Constant variables of different data types
    address public constant MY_ADDRESS = 0x1234567890123456789012345678901234567890;
    string public constant MY_STRING = "Hello, Solidity!";
    bytes32 public constant MY_BYTES = keccak256("constant value");

    function getMyAddress() public pure returns (address) {
        return MY_ADDRESS;
    }

    function getMyString() public pure returns (string memory) {
        return MY_STRING;
    }

    function getMyBytes() public pure returns (bytes32) {
        return MY_BYTES;
    }

    function getMyUint() public pure returns(uint256) {
        return MY_UINT;
    }


}