pragma solidity ^0.7.5;
// SPDX-License-Identifier: Apache-2.0

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./whiteListedErc20/IWhiteListedERC20.sol";
import "./userRegistry/IUserRegistry.sol";


contract WhiteListedERC20 is ERC20, IWhiteListedERC20 {

    IUserRegistry userRegistry;

    constructor(
        string memory _name, 
        string memory _symbol, 
        IUserRegistry _userRegistryContract
    ) ERC20(_name, _symbol){}

    /**
     * @dev See {ERC20-_beforeTokenTransfer}.
     *
     * Requirements:
     *
     * - _from must be registered
     * - _to must be registered
     *
     */
    function _beforeTokenTransfer(address _from, address _to, uint256 _amount) internal override {
        super._beforeTokenTransfer(_from, _to, _amount);
    }

}