//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Token {
    string public name = "Ekomobong Token";
    string public symbol = "ET";
    uint public totalSupply = 1000000;
    mapping(address => uint) balances;

    constructor() {
        // set the balance of the person that deployed the contract to be equal to the totalSupply
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }  

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }
}