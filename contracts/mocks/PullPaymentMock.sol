// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/security/PullPayment.sol";

// mock class using PullPayment
contract PullPaymentMock is PullPayment {
    constructor() payable {}

    // test helper function to call asyncTransfer
    function callTransfer(address dest, uint256 amount) public {
        _asyncTransfer(dest, amount);
    }
}
