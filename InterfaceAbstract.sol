// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
interface _Interface {
    function count() external view returns(uint) ;
    function increment() external ;
}
abstract contract  _Abstract {
function getResult() public view virtual returns(uint); //using the abstract and virtuual keyword 
}
contract InterfaceAbstract is _Abstract {
    
    function  getResult()  public  pure override returns(uint) {
        uint a = 1+5*6;
        return a;
    }
    function incrementCounter(address _counter) external 
    {
    _Interface(_counter).increment();
    }
    function getCount(address _counter) external view returns (uint)
    {
    return _Interface(_counter).count();
    } 
}