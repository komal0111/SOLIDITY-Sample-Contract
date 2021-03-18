pragma solidity ^0.5.1;
contract Modifercontract

{
    
    address owner;
    
    constructor () public
    {
        owner=msg.sender;
    }
    
    /* Modifier: Conditions you want to test in other functions
    _; means o if condition of modifier is satisfied while calling this function, 
   the function is executed and otherwise, an exception is thrown.*/
   
  /* require():The require Solidity function guarantees validity of conditions that cannot be detected before execution.
   It checks inputs, contract state variables and return values from calls to external contracts.*/
    
    modifier onlyOwner()
    {
       
       require(msg.sender == owner,"Only owner can call this function.");
      _;
      
    }
    
     //if You call this function hiddenly execute this code
        //address(this)balance=address(this).balance+msg.value
        
    function receiveDepositAmount()payable public
      {
        
    }
    
    function getBalance() public view returns (uint)
    {
     return address(this).balance;
     }

//Transfer some Amount from the contract’s balance to the owner
//onlyOwner =Only the contract’s creator is permitted to withdraw

function withdraw (uint amount) public onlyOwner
{
    msg.sender.transfer(amount);
}
}
