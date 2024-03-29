// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("MyToken", "MTK") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

// -----------------------------------------------------------------------------
// For initial supply -
// contract GLDToken is ERC20 {
//     constructor(uint256 initialSupply) ERC20("Gold", "GLD") {
//         _mint(msg.sender, initialSupply);
//     }
// }


//------------------------------------------------------------------------------
// For Fixed supply -
// contract ERC20FixedSupply is ERC20 {
//     constructor() ERC20("Fixed", "FIX") {
//         _mint(msg.sender, 1000);
//     }
// }
