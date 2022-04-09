//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// @openzeppelin has it's own default basic ERC20 methods/functions

contract EToken is ERC20 {
    // constructor(string memory name, string memory symbol) ERC20(name, symbol) {
    //     _mint(msg.sender, 100000 * (10 ** 18));
    // } // put in constructor params when deploying which is passed to ERC20 params
    
    // OR

     constructor() ERC20("Ekomobong Token", "ET") { // hardcode ERC20 params
        _mint(msg.sender, 100000 * (10 ** 18));
    }
}
