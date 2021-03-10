/**SPDX(Software Package Data Exchange ) -GPL3.0 means :GNU General Public License v3.0 or later
SPDX is used in free and open or collaborative software, data, hardware, or documentation**/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;
contract Timestamp
{
   uint start;
   uint end;
   function Begin() public
   {
      start = block.timestamp;
   } 
   function Close() public 
   {
      end = block.timestamp;
   } 
   function getTimeDif() public view returns(uint){
      return end - start;
   }     
}
