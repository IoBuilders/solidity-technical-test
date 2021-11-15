pragma solidity ^0.7.5;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: Apache-2.0

import "./userRegistry/IUserRegistry.sol";

abstract contract UserRegistry is IUserRegistry {

    User[] users; // array of users
    mapping(address => uint256) userIndex; // mapping for users index

}