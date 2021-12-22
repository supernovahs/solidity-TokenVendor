pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "./YourToken.sol";

contract Vendor {

  YourToken yourToken;

  constructor(address tokenAddress) public {
    yourToken = YourToken(tokenAddress);
  }
  uint internal amountOfTokens = (msg.value *100);
  event BuyTokens(address buyer, uint amountOfETH, uint amountOfTokens);
  uint public constant tokensPerEth = 100;
  function buyTokens() public payable {
    yourToken.transfer(msg.sender,amountOfTokens);
    emit BuyTokens(msg.sender, msg.value , amountOfTokens);   
  }
  
  // ToDo: create a payable buyTokens() function:


  // ToDo: create a withdraw() function that lets the owner withdraw ETH


  // ToDo: create a sellTokens() function:


}
