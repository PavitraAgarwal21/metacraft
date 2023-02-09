// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract ExampleContract {
    uint public uintVar;
    address public addressVar;
    string public stringVar;
    bool public boolVar;

    function setUintVar(uint _value) public {
        uintVar = _value;
    }

    function getUintVar() public view returns (uint) {
        return uintVar;
    }

    function setaddressVar(address _address) public {
        addressVar = _address;
    }

    function getIntVariable() public view returns (address) {
        return addressVar;
    }

    function setStringVariable(string memory _string) public {
        stringVar = _string;
    }

    function getStringVar() public view returns (string memory) {
        return stringVar;
    }

    function setBoolVar(bool _bool) public {
        boolVar = _bool;
    }

    function getBoolVar() public view returns (bool) {
        return boolVar;
    }
}
