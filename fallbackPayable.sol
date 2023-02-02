// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReceiveEther {
    receive() external payable {}

    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendEthe(address payable _to) public payable {
        (bool sent ,) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}