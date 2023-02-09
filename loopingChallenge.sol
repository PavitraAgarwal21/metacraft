// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Calculator {
   function divide(int a, int b) public pure returns (int) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }
     function subtract(int a, int b) public pure returns (int) {
        return a - b;
    }
     function add(int a, int b) public pure returns (int) {
        return a + b;
    }
    function multiply(int a, int b) public pure returns (int) {
        return a * b;
    }
}

