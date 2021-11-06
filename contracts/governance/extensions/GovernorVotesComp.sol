// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (governance/extensions/GovernorVotesComp.sol)

pragma solidity ^0.8.0;

import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/governance/Governor.sol";
import "https://github.com/javaknows/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20VotesComp.sol";

/**
 * @dev Extension of {Governor} for voting weight extraction from a Comp token.
 *
 * _Available since v4.3._
 */
abstract contract GovernorVotesComp is Governor {
    ERC20VotesComp public immutable token;

    constructor(ERC20VotesComp token_) {
        token = token_;
    }

    /**
     * Read the voting weight from the token's built in snapshot mechanism (see {IGovernor-getVotes}).
     */
    function getVotes(address account, uint256 blockNumber) public view virtual override returns (uint256) {
        return token.getPriorVotes(account, blockNumber);
    }
}
