// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/mocks/CountersImpl.sol";
import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/proxy/utils/UUPSUpgradeable.sol";

contract UUPSUpgradeableMock is CountersImpl, UUPSUpgradeable {
    // Not having any checks in this function is dangerous! Do not do this outside tests!
    function _authorizeUpgrade(address) internal virtual override {}
}

contract UUPSUpgradeableUnsafeMock is UUPSUpgradeableMock {
    function upgradeTo(address newImplementation) external virtual override {
        ERC1967Upgrade._upgradeToAndCall(newImplementation, bytes(""), false);
    }

    function upgradeToAndCall(address newImplementation, bytes memory data) external payable virtual override {
        ERC1967Upgrade._upgradeToAndCall(newImplementation, data, false);
    }
}

contract UUPSUpgradeableBrokenMock is UUPSUpgradeableMock {
    function upgradeTo(address) external virtual override {
        // pass
    }

    function upgradeToAndCall(address, bytes memory) external payable virtual override {
        // pass
    }
}
