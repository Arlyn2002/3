// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Module3 is ERC20 {
    event TransferCustom(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed burner, uint256 value);
    event Mint(address indexed to, uint256 value);

    constructor() ERC20("assessment", "Arlyn Garcia") {
        _mint(msg.sender, 200 * (2 * 10 ** uint256(decimals())));
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transfer(recipient, amount);
        if (success) {
            emit TransferCustom(msg.sender, recipient, amount);
        }
        return success;
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
        emit Mint(to, amount);
    }
}