// SPDX-License-Identifier: MIT
pragma solidity ^0.6.1;
contract MyGetContract

{
    
    address owner;
    
    constructor () public
    {
	// it store owner address
        owner=msg.sender;
    }

    function receiveDepositAmount()payable public
    {
        //if You call this function then it execute this code hiddenly
        //address(this).balance=address(this).balance+msg.value
    }
    function getBalance() public view returns (uint)
   	 {
    return address(this).balance;
	}
}