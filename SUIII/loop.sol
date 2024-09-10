// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WhileLoopExample {
    function sumToN(uint n) public pure returns (uint) {
        uint sum = 0;
        uint i = 0;

        while (i <= n) {
            sum += i;
            i++;
        }

        return sum;
    }
}
