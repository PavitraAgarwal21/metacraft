// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract SmartContract {
    uint public balance;

    function deposit() public payable {
        balance += msg.value;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }

    function multiply(uint x, uint y) public pure returns (uint) {
        return x * y;
    }
}