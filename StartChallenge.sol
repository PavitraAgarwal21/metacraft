// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract AdminOnly {
    address private admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Access Denied: Only the admin can call this function.");
        _;
    }

    function setAdmin(address newAdmin) public onlyAdmin {
        admin = newAdmin;
    }
   
}



