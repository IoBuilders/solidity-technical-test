# IoBuilders Solidity Technical Test

In this repository we provide the schema for the solidity technical test.

The main goals are to evaluate:
- Solidity development skills.
- Ethereum environment knowledge.
- Research capabilities.

## Introduction

We want to create a white listed ERC20 so that we ensure only our registered users can trade with our coin.

With this objective, we have created the following contracts:

1. **WhiteListedERC20.sol**

> It is our ERC20 token. All its functions must only be available for the users that have been registered in the contract.

2. **UserRegistry.sol**
    
> It is the contract that manages our users. The user is identified by a blockchain address and its basic data is represented by a bytes32 resulting of combining its Name and Document Identification Number.

    Ex: web3.utils.keccak256("John.0123456583")

## Exercise 1 - Contracts

Develop contracts functionalities described in **IUserRegistry.sol** and **IWhiteListedERC20.sol**. 

## Exercise 2 - Deployment Script

Modify **migrations/1_initial_migration.js** in order to deploy the required contracts.

## Exercise 3 - Testing

Complete the tests for the developed functionality.

## Exercise 4 - Deployment Process

Deploy the contracts in a ganache node and interact with them. 

Write the steps you followed in order to deploy and interact with the contracts in this section.

## Bonustrack
	
In most of DApps projects, contracts are maintained and upgraded as new functionalities are required or needs to be modified. Deploying the upgraded contracts would make us loose all the data saved on them. That is not an option in production scenarios.

As a solution, the [Eternal Storage Pattern](https://fravoll.github.io/solidity-patterns/eternal_storage.html) comes in. Implementing this pattern allow us to upgrade our contracts mainting all the data save and available for the new deployed contracts.

Taking that in to account, we propose you as a further step, to make use of the eternal storage provided in the __storage__ folder and wich is inherited by **UserRegistryStorageWrapper.sol** (don't make use of this contract apart from the purpose of this task).

All the needed functions are already defined in the contract and one of them is implemented as an example.