pragma solidity ^0.7.5;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: Apache-2.0

interface IUserRegistry {

    struct User {
        address userAddress;
        bytes32 userData;
    }

    event UserAdded(User user_);

    event UserDeleted(User user_);

    event UserModified(User oldUser_, User newUser_);

    /// @notice Adds a new user to the list of users
    /// @param _user new User to be added
    /// @dev The user must not exists already. UserAdded event must be emited
    function addUser(User memory _user) external returns (bool);

    /// @notice Deletes a user from list of users
    /// @param _userAddress address of the user to be deleted
    /// @dev The user must exists. UserDeleted event must be emited
    function deleteUser(address _userAddress) external returns (bool);

    /// @notice Modifies the users data
    /// @param _userAddress address of the user to be modified
    /// @param _newUserData the new data of the user
    /// @dev The user must exists. UserModified event must be emited
    function modifyUser(address _userAddress, bytes32 _newUserData) external returns (bool);

    /// @notice Obtains the user
    /// @param _userAddress address of the user to be obtained
    function obtainUser(address _userAddress) external view returns (User memory);

    /// @notice Obtains all the users
    function obtainUsers() external view returns (User[] memory);

    /// @notice Checks if the user exists
    /// @param _userAddress address of the user
    function existsUser(address _userAddress) external view returns (bool);
}