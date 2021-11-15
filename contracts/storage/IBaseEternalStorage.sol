pragma solidity ^0.7.5;
// SPDX-License-Identifier: Apache-2.0

import "iterable-eternal-storage/contracts/IIterableEternalStorage.sol";

interface IBaseEternalStorage {

    event EternalStorageUpgraded(IIterableEternalStorage oldVersion, IIterableEternalStorage newVersion);
    
    function upgradeEternalStorage(IIterableEternalStorage newAddress) external;
}