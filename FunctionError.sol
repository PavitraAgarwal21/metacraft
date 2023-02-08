// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract FunctionError 
    {
        // setting the owner of the contract 
        //it once the contract is deployed it cannot changed 
        //because it only execute at once during the deployment 
        address  payable public owner ;
        constructor () {
        owner = payable(msg.sender);
        }
        uint public i ;  // another state variable 
        //require message 
        // if the require has two argument , 
        // first -  is the condition 
        // second - is the message if the first argument condition is false 
        // if the condition is false -  then the second argument is shown to the caller 
        //                              and terminate the execution of the function 
        // it also excute without the second argument        
        function _Require() public view {
                require(msg.sender == owner,"not the owner of the contract from require"); 
        
        } 
        // require is uses for complex errors handlings 
        // ths the same implication as the above 
        // they are similar to their meaning in the english language 
        //revert return the remmaing gas  which is left 
        // revert is safer to use 
        //revert is prefer to use  - bcz if some error has occured then instead 
        //                           of burn all the gas it revert back the remmaing gas  
        function _revert() public  view {
            if(msg.sender != owner ) { 
                // revert is used for complex 
                revert ("not the owner of the contract from the revert");
            }
        }



        // custom errror can be used in the revert 
        // where we wnat complex or customizable message to the caller about the error 
        // or retieve use full information of the error 
        // we first defined the error 
        error NotOwner(address payable _address, string  str); 
        function _revertCustom() public view {
              if(payable(msg.sender) != owner) 
              {
                revert NotOwner({_address: payable(msg.sender), str : "not the owner address"});
              }
        }
        // custom error can also provide who have call the function by sending the msg.sender to the log

        // assert is simple to use have only one argument
        //if it false it terminates the execution of the function 
        // it uses in the contract outside the function if we want all over that this condition ale=ways follow int he contract 
        function _assert() public payable  {
            // used for internal 
            assert(payable(msg.sender) == owner);

        }

    }
