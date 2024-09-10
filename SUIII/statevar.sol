// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage{
    uint256 public  storedata;

    function set(uint256 x) public {
        storedata=x;
    } 

    function get() public view returns (uint256){
        return storedata;
    }
}