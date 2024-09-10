// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array{

    //ways of inilitiazing the array
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    uint256[3] public arr3;
    uint[6] data1;


    //get the value of the array through the function call
    function getArr()public view returns(uint256[] memory){
        return arr;
    }


    //know the length of the array
    function getLength() public view returns (uint256){
        return arr2.length;
    }

    //this increses the lenght of arr2 by 1
    function push() public {
        arr2.push();
    }


    //this decreases the length of the arr2 by 1
    function pop() public {
        arr2.pop();
    }


    function array_example() public returns (
    int[5] memory, uint[6] memory){  
           
        int[5] memory data 
        = [int(50), -63, 77, -28, 90];  
        data1 
        = [uint(10), 20, 30, 40, 50, 60];
           
        return (data, data1);  
  }


}

