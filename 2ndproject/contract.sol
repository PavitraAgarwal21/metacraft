// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Increment {
    uint public i ;
    constructor () {
        i =10 ;
    }
    function _i () public view returns(uint) {
        return i; 
    } 
    function _inc () public  {
        i += 1 ;
   
    }
    function _dec() public {
        i -=1;
     
    }
    function _setzero() public {
        i =0;
    }
}


// deployed on the contract =0x03d7819bAb6d660864c259e5EBad4c596dbCc8B3