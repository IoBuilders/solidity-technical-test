pragma solidity ^0.7.5;
// SPDX-License-Identifier: Apache2

import "iterable-eternal-storage/contracts/IterableEternalStorage.sol";

//This contracts helps to compile IterableEternalStorage for creating artifacts on tests,
// i.e: if you remove this contract, test that has the statement "artifacts.require("IterableEternalStorage");"
//will fail with error "Error HH700: Artifact for contract "IterableEternalStorage" not found."

// solhint-disable no-empty-blocks
contract BaseEternalStorage is IterableEternalStorage {}