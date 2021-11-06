// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (governance/extensions/GovernorVotes.sol)

pragma solidity ^0.8.0;

import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/governance/Governor.sol";
import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/utils/math/Math.sol";

/**
 * @dev Extension of {Governor} for voting weight extraction from an {ERC20Votes} token.
 *
 * _Available since v4.3._
 */
abstract contract GovernorVotes is Governor {
    ERC20Votes public immutable token;

    constructor(ERC20Votes tokenAddress) {
        token = tokenAddress;
    }

    /**
     * Read the voting weight from the token's built in snapshot mechanism (see {IGovernor-getVotes}).
     */
    function getVotes(address account, uint256 blockNumber) public view virtual override returns (uint256) {
        return token.getPastVotes(account, blockNumber);
    }
}
