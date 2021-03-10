
 pragma solidity ^0.5.0; 

// Creating a contract 
contract Types 
{ 

	// Creating an enumerator 
	
	enum year_months 
	  { 
	January,February,March,April,May,June,July,August,September,October,November,December 
	
	  } 
	//months start at 0 t0 11

	// Declaring variables of Type enumerator 

	year_months month;	 
	year_months option; 

	// Setting a default value 
	
	 year_months constant default_value = year_months.December; 
	
	// Defining a function to set value of option 
	
	function set_value() public 
	{ 
	option = year_months.June; 
	} 

	// Defining a function to return value of option or choice

	function get_option( 	) public view returns (year_months) 
	{ 
	return option; 
	} 
		
	// Defining function to return default value 
	
	function getdefaultvalue( 	) public pure returns(year_months) 
	{ 
		return default_value; 
	} 
}
