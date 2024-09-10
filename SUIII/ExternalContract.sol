// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExternalContract {
    function mightFail(bool shouldFail) public pure returns (string memory) {
        require(!shouldFail, "The function has failed");
        return "Success!";
    }
}
