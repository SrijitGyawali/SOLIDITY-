// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;



//using public view gives error


contract weTry {
    function findLargest(uint a, uint b, uint c) public pure  returns (uint) {
        if (a>b && b>c) {
            return a;
        }else if(b>c && c>a){
            return b;
        }else{
            return c;
        }
    } 
}