// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract EtherCollector {
    address payable public owner;
    uint256 public _getWei;
      uint256 public _getEther;
       uint256 public _getGwei;
    constructor()  {
        owner = payable(msg.sender);
    }
    function collectEther() public payable {
        require(msg.value > 0, "non zero transact amount");
        owner.transfer(msg.value);
    } 
    function getWei() public  payable{
      _getWei = msg.value;
    }
function getEther() public payable {
    _getEther =  msg.value / (10**18);
}
    function getGwei() public payable  {
        _getGwei =  msg.value / 1 gwei;
    }
}
