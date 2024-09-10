// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ExternalRecipient {
    function receiveFunds(uint amount) public pure returns (string memory) {
        require(amount > 0, "Amount must be greater than zero");
        return "Funds received successfully!";
    }
}
