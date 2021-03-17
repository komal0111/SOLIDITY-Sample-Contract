// SPDX-License-Identifier: MIT
pragma solidity ^0.6.1;
contract DepositAmount

{
    // state variable declaration 
    
    uint account_balance=25000;
    string message;
    
    
    //getbalance function (Getterfunction)
    
    function getBalance() public view returns (uint)
    {
    return account_balance;
    }
    
    
    // deposit amount to account
    
    function Deposit(uint credit_amount) public
    {
      account_balance =account_balance+credit_amount;
    
    }
   
   
   function Withdraw(uint debit_amount) public 
   {
       
       if (account_balance<=0) 
       {
       
          message="InsufficientFund";
       }
       else
       {
      
          account_balance=account_balance-debit_amount;
       }
   }
}