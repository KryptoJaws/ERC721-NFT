pragma solidity ^0.5.0;

import "./ERC721Full.sol";

 contract Color is ERC721Full {
 string[] public colors;
 mapping(string => bool) _colorExists;


constructor() ERC721Full("Color", "COLOR") public {	
	}

function mint(string memory _color) public {

	require(!_colorExists[_color]); // reading the value in the mapping 
	colors.push(_color);
	uint _id = colors.length-1;  
	_mint(msg.sender, _id);   
	_colorExists[_color] = true;  // setting the value in the mapping 
	}

}
