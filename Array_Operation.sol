// Solidity program to demonstrate Array operation  
pragma solidity ^0.5.0; 

// Creating a contract 

contract Array_Operation_numeric 
{ 

	// Defining the array 
	
	uint[] arr_element = [101, 210, 130, 140, 125]; 
	
	// Array index start at zero
	
	// Defining the function to push values to the array 
	
	function array_push( 	) public returns(uint[] memory)
	{ 
	
		arr_element.push(215); 
		arr_element.push(270); 
		arr_element.push(801); 
	
		return arr_element; 
	}
	
	// Defining the function to pop values to the array 
	
	function array_pop(   ) public returns(uint[] memory)
	{   
        arr_element.pop();  
        return arr_element;   
    }  
    
    // Defining the function to find length of array values 
    
    function array_length(  ) public view returns(uint)
    {   
        uint len = arr_element.length; 
        return len;  
    }
    
    // Defining the function to find position of the element 0 of the array 
    
    function array_element(   ) public view returns (uint)
    {   
        uint position = arr_element[0]; 
        return position;   
   }   
}
