// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {

    }

    function mint(uint256 amount) public onlyOwner {
        require(amount > 0, "Mint amount must be greater than 0");
        require(totalSupply() + amount >= totalSupply(), "Mint would cause overflow");
        
        _mint(_msgSender(), amount);
    }

    function burn(uint256 amount) public {
        require(amount <= 200, "Burn amount too high");
        require(balanceOf(_msgSender()) >= amount, "Insufficient funds for burning");

        _burn(_msgSender(), amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        require(amount > 0, "Transfer amount must be greater than 0");
        require(balanceOf(_msgSender()) >= amount, "Insufficient funds for transfer");

        _transfer(_msgSender(), to, amount);
        return true;
    }
}
