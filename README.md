# Module3 ERC20 Token

This project is a custom ERC20 token smart contract written in Solidity. The contract extends the OpenZeppelin ERC20 implementation and adds custom events and functions for transferring, burning, and minting tokens.

## Contract Overview

The contract `Module3` inherits from the OpenZeppelin ERC20 contract. It includes additional functionality and custom events to suit specific needs.

### Features

- **Transfer Tokens**: Transfer tokens from one address to another with a custom event.
- **Burn Tokens**: Burn tokens from the sender's account.
- **Mint Tokens**: Mint new tokens to a specified account.

### Events

- `TransferCustom(address indexed from, address indexed to, uint256 value)`: Emitted when a transfer occurs.
- `Burn(address indexed burner, uint256 value)`: Emitted when tokens are burned.
- `Mint(address indexed to, uint256 value)`: Emitted when tokens are minted.

## Functions

### Constructor

```solidity
constructor() ERC20("assessment", "Arlyn Garcia")
```

Initializes the contract with the token name "assessment" and symbol "Arlyn Garcia". Mints an initial supply of tokens to the deployer's address.

### `transfer`

```solidity
function transfer(address recipient, uint256 amount) public override returns (bool)
```

Transfers tokens from the caller’s account to the `recipient`. If successful, emits the `TransferCustom` event.

### `burn`

```solidity
function burn(uint256 amount) public
```

Burns a specified `amount` of tokens from the caller’s account. Emits the `Burn` event.

### `mint`

```solidity
function mint(address to, uint256 amount) public
```

Mints a specified `amount` of tokens to the `to` address. Emits the `Mint` event.

## Usage

### Deployment

Deploy the contract using Remix IDE or any other preferred Solidity development environment.

### Interacting with the Contract

Once deployed, you can interact with the contract functions using any Ethereum wallet or directly via Remix IDE.

## Requirements

- Solidity ^0.8.0
- OpenZeppelin Contracts library
