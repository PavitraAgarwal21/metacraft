// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract MyEvents {
    event LogSomething(string message, uint indexed timestamp);
    event LogSomethingElse(string message, uint indexed timestamp);
    event LogEvenMore(string message, uint indexed timestamp);

    function doSomething(string memory message) public {
        emit LogSomething(message, block.timestamp);
    }

    function doSomethingElse(string memory message) public {
        emit LogSomethingElse(message, block.timestamp);
    }

    function doEvenMore(string memory message) public {
        emit LogEvenMore(message, block.timestamp);
    }
}