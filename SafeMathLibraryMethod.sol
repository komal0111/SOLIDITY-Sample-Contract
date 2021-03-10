// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
//SafeMath is a solidity math library especially designed to support safe math Arithmetic operations
//safe means that it prevents overflow when working with uint

library SafeMath
{
    
    function add(uint256 a, uint256 b)internal pure returns(uint256)
    {
        uint256 c= a+b;
        //The assert function should only be used to test for internal errors, and to check invariants.
        assert(c>=a);
        return c;
    }
    
    function sub(uint256 a, uint256 b)internal pure returns(uint256)
    {
        assert(b<=a);
        return a-b;
    }
    
    function mul(uint256 a, uint256 b)internal pure returns(uint256)
    {
        uint256 c=a*b;
        assert(a==0 || c/a==b);
        return c;
    }
    
    function div(uint256 a, uint256 b,string memory errorMessage)internal pure returns (uint256)
    {
        //The require function should be used to ensure valid conditions, such as inputs, or contract state variables are met,
        //or to validate return values from calls to external contracts.
        require(b > 0, errorMessage);
        uint256 c = a/b;
        return c;
    }
    
}