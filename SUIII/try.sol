// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ExternalContract.sol";

contract MainContract {
    event CallSuccess(string message);
    event CallFailed(string reason);

    function callExternalFunction(address externalContractAddress, bool shouldFail) public {
        ExternalContract externalContract = ExternalContract(externalContractAddress);

        try externalContract.mightFail(shouldFail) returns (string memory result) {
            // If the external call succeeds, emit success event
            emit CallSuccess(result);
        } catch Error(string memory reason) {
            // If the external call fails, catch the error and emit failure event
            emit CallFailed(reason);
        }
    }
}
