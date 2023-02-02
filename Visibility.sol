// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Visibilty {
uint public a ;

function _viewFn () public view returns(uint){
  return a+6;
}
function _pureFn() public pure returns(uint) {
    uint x = 9;
    uint y =8;
    return x+y; 
}
function _readAndWrite () public  returns(uint) {
    a = a+5;
    return a;
}
}