pragma solidity ^0.7.5;
// SPDX-License-Identifier: Apache-2.0

interface IWhiteListedERC20 {

    /// @notice Creates _amount of tokens and assigns them to `account`
    /// @param _account Address to send the tokens to
    /// @param _amount Amount of tokens to be created
    function mint(address _account, uint256 _amount) external;

    /// @notice Transfers _amount of tokens from _sender to _recipient
    /// @param _sender Address to transfer the tokens from
    /// @param _recipient Address to transfer the tokens to
    /// @param _amount Amount of tokens to be created
    function transfer(address _sender, address _recipient, uint256 _amount) external;
}