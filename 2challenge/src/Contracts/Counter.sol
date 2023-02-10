
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Increment {
    uint public i ;
    constructor () {
        i =0 ;
    }
    function _i () public view returns(uint) {
        return i; 
    } 
    function _inc () public  returns (uint) {
        i += 1 ;
        return i;
   
    }
    function _dec() public returns (uint) {
        i -=1;
        return i;
     
    }
    function _setzero() public returns (uint) {
        i =0;
        return i;
    }
}
// deployed on the contract =0xf037CEd131f04bcF49A27EC25d81E45cE0C4f817