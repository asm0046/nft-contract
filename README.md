# NFT Smart Contract

This repository contains a basic Clarity smart contract for a Non-Fungible Token (NFT).

## Contract Structure

### Public Functions

- `mint`: Mints a new NFT with a specified token ID to a recipient.
- `get-owner`: Returns the owner of a specified token ID.

### Testing

Tests are located in the `tests/my-nft-test.clar` file. These tests cover:

- Minting a new token and verifying the owner.
- Minting another token to a different recipient and verifying the owner.

## Project Structure

