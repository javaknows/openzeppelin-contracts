// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/utils/math/SafeCast.sol";

contract SafeCastMock {
    using SafeCast for uint256;
    using SafeCast for int256;

    function toUint256(int256 a) public pure returns (uint256) {
        return a.toUint256();
    }

    function toUint224(uint256 a) public pure returns (uint224) {
        return a.toUint224();
    }

    function toUint128(uint256 a) public pure returns (uint128) {
        return a.toUint128();
    }

    function toUint96(uint256 a) public pure returns (uint96) {
        return a.toUint96();
    }

    function toUint64(uint256 a) public pure returns (uint64) {
        return a.toUint64();
    }

    function toUint32(uint256 a) public pure returns (uint32) {
        return a.toUint32();
    }

    function toUint16(uint256 a) public pure returns (uint16) {
        return a.toUint16();
    }

    function toUint8(uint256 a) public pure returns (uint8) {
        return a.toUint8();
    }

    function toInt256(uint256 a) public pure returns (int256) {
        return a.toInt256();
    }

    function toInt128(int256 a) public pure returns (int128) {
        return a.toInt128();
    }

    function toInt64(int256 a) public pure returns (int64) {
        return a.toInt64();
    }

    function toInt32(int256 a) public pure returns (int32) {
        return a.toInt32();
    }

    function toInt16(int256 a) public pure returns (int16) {
        return a.toInt16();
    }

    function toInt8(int256 a) public pure returns (int8) {
        return a.toInt8();
    }
}
