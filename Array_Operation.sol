// Solidity program to demonstrate Array operation  
pragma solidity ^0.5.0; 

// Creating a contract 

contract Types 
{ 

	// Defining the array 
	
	uint[] data = [101, 210, 130, 140, 125]; 
	
	// Array index start at zero
	
	// Defining the function to push values to the array 
	
	function array_push( 	) public returns(uint[] memory)
	{ 
	
		data.push(215); 
		data.push(270); 
		data.push(801); 
	
		return data; 
	}
	
	// Defining the function to pop values to the array 
	
	function array_pop(   ) public returns(uint[] memory)
	{   
        data.pop();  
        return data;   
    }  
    
    // Defining the function to find length of array values 
    
    function array_length(  ) public view returns(uint)
    {   
        uint x = data.length; 
        return x;  
    }
    
    // Defining the function to find position of the element3 of the array 
    
    function array_element(   ) public view returns (uint)
    {   
        uint x = data[0]; 
        return x;   
   }   
}