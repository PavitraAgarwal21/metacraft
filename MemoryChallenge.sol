// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract MemoryTypes {
    mapping (address => uint256) balances; // it stores the balance of the address on the blockchain 

    function add(uint _amt) public {
        balances[msg.sender] += _amt; // here amt is the memory because after the execution of the function there is no exsistence of amt
    }
}