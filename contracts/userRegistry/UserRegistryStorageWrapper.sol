pragma solidity ^0.7.5;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: Apache-2.0

import "../storage/BaseWrapperEternalStorage.sol";
import "./IUserRegistry.sol";

abstract contract UserRegistryStorageWrapper is BaseWrapperEternalStorage, IUserRegistry {

    string private constant USERS_LIST = "Users.list";
    string private constant USER_DATA = "User.data";


    function _addUser(User memory user) internal returns (bool) {
        eternalStorage.addAddressKey(
            keccak256(abi.encodePacked(USERS_LIST)), 
            user.userAddress
        );
        _setBytes32(
            keccak256(abi.encodePacked(USER_DATA, user.userAddress)), 
            user.userData
        );
        return true;
    }

    function _deleteUser(address _userAddress) internal returns (bool){

    }

    function _modifyUser(address _userAddress, bytes32 _newUserData) internal returns (bool) {

    }

    function _obtainUser(address _userAddress) internal view returns (User memory) {

    }

    function _obtainUsers() internal view returns (User[] memory) {

    }

    function _existsUser(address _userAddress) internal view returns (bool) {

    }

}