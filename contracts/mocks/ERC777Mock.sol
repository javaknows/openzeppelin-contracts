// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/utils/Context.sol";
import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/token/ERC777/ERC777.sol";

contract ERC777Mock is Context, ERC777 {
    event BeforeTokenTransfer();

    constructor(
        address initialHolder,
        uint256 initialBalance,
        string memory name,
        string memory symbol,
        address[] memory defaultOperators
    ) ERC777(name, symbol, defaultOperators) {
        _mint(initialHolder, initialBalance, "", "");
    }

    function mintInternal(
        address to,
        uint256 amount,
        bytes memory userData,
        bytes memory operatorData
    ) public {
        _mint(to, amount, userData, operatorData);
    }

    function mintInternalExtended(
        address to,
        uint256 amount,
        bytes memory userData,
        bytes memory operatorData,
        bool requireReceptionAck
    ) public {
        _mint(to, amount, userData, operatorData, requireReceptionAck);
    }

    function approveInternal(
        address holder,
        address spender,
        uint256 value
    ) public {
        _approve(holder, spender, value);
    }

    function _beforeTokenTransfer(
        address,
        address,
        address,
        uint256
    ) internal override {
        emit BeforeTokenTransfer();
    }
}
