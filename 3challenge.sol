// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.8/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20 {
address owner ;
constructor (string memory name , string memory symbol ) ERC20(name , symbol)  {
  owner =msg.sender ;
}
function mint (uint amount) public  {
require(msg.sender == owner , "not the owner of the contract " );
     _mint(msg.sender , amount  );
}
function decimals() public view virtual override returns (uint8) {
  return 18;
}

function burn(uint _amount) public  {
    _burn(msg.sender , _amount) ;
}

}
