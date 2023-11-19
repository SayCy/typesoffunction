# MyToken Smart Contract

This Solidity smart contract implements a basic ERC-20 token with additional functionalities such as minting, burning, and ownership control. It utilizes the OpenZeppelin library for the ERC-20 implementation and access control through the Ownable contract.

## Contract Details

- **Name**: MyToken
- **Symbol**: MYT

## Usage

### Deployment

Deploy the contract to the Ethereum blockchain using a development environment, testnet, or mainnet. Make sure to specify the desired parameters such as the name and symbol during deployment.

### Minting

The `mint` function allows the owner to create new tokens. Provide the desired amount to mint.

### Burning

The `burn` function enables token holders to destroy their tokens, with a limit of 200 tokens per burn.

### Transfer

The `transfer` function allows the owner to transfer tokens to another address.
