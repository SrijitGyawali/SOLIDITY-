// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractB {
    uint public data;

    function setData(uint _data) external {
        data = _data;
    }

    function getData() external view returns (uint) {
        return data;
    }
}

contract ContractA {
    function callSetData(address _contractBAddress, uint _data) external {
        // Create an instance of ContractB at the provided address
        ContractB(_contractBAddress).setData(_data);
    }

    function callGetData(address _contractBAddress) external view returns (uint) {
        // Create an instance of ContractB at the provided address
        return ContractB(_contractBAddress).getData();
    }
}
