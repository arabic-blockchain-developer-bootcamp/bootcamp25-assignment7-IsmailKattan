// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Assignment7 is ERC20 {
    address owner; 
    // Constructor to initialize the token
    // Fill in the parameters for the token name and symbol
    constructor(string memory name, string memory symbol) ERC20(name,symbol) {
        owner = msg.sender;
    }
    modifier onlyOwner(address account) {
        require(owner == account);
        _;
    }
    // Function to mint tokens
    // Fill in the visibility modifier to be external
    // Set params as to address and amount
    function mint(address to, uint256 amount) external onlyOwner(msg.sender) {
        // Fill in the logic
        // call _mint function with to and amount params
        _mint(to, amount);
    }
}
