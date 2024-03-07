
# Degen Token Project
# Overview
Degen Token is an ERC-20 token built on the Ethereum blockchain using the Solidity programming language. It incorporates functionalities such as minting, burning, transferring, and gaining reward items. The contract is inspired by decentralized finance (DeFi) and provides a basic framework for managing a custom token.

# Token Details
Name: Degen
Symbol: DWN
Decimals: 18
# Features
# Minting
The contract allows the owner to mint Degen tokens. There are two minting functions available:

mintDegenToken(uint256 amount): Mints a specified amount of Degen tokens for the contract owner.
mintDegenToken(address[] memory players, uint256 amount): Mints the specified amount of Degen tokens for multiple addresses.
# Transferring
transferDegenToken(address _to, uint256 _amount): Allows users to transfer Degen tokens to a specified address, provided they have a sufficient balance.
# Burning
burnDegenToken(uint256 _amount): Enables users to burn a specified amount of their Degen tokens, reducing their balance.
Reward Items
Users can gain reward items using the gainRewardItems function. The available reward items are:

MACHINEGUN
SHOTGUN
HEALTH
BOMD
The price of each item is determined by the getPrice function.

# Withdraw Funds
withdrawFunds(): Allows the contract owner to withdraw the entire balance of Degen tokens from the contract.
Reward Items Pricing
The pricing for each reward item is as follows:

MACHINEGUN: 10 Degen tokens
SHOTGUN: 8 Degen tokens
HEALTH: 6 Degen tokens
BOMD: 15 Degen tokens
# Usage
Deploy the contract on the Ethereum blockchain.
Mint Degen tokens using the mintDegenToken functions.
Transfer tokens to other addresses using the transferDegenToken function.
Burn tokens using the burnDegenToken function.
Gain reward items using the gainRewardItems function.
# Note
Ensure that the contract owner has an adequate balance to cover minting and reward item transactions.
Always check the available balance before initiating any transactions.
Feel free to customize and extend the functionalities of this contract based on your project requirements.# avalanche-degan-token
