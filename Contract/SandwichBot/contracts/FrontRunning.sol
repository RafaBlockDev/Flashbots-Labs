// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @author RafaBlockDev
/// @title FrontRunning

contract FrontRunning {
    bytes32 public secretHash;

    constructor(bytes32 _secretHash) payable {
        secretHash = _secretHash;
    }

    function toke(string calldata _secret) external {
        if (keccak256(abi.encodePacked(_secret)) == secretHash) {
            uint256 _myBalance = address(this).balance;
            payable(msg.sender).transfer(_myBalance);
        }
    }
}
