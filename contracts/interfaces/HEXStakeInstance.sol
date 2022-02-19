// SPDX-License-Identifier: MIT
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.2. SEE SOURCE BELOW. !!
pragma solidity 0.8.9;

import "../declarations/Internal.sol";

interface IHEXStakeInstance {
    function create(uint256 stakeLength) external;

    function destroy() external;

    function goodAccounting() external;

    function initialize(address hexAddress) external;

    function share()
        external
        view
        returns (
            HEXStakeMinimal memory stake,
            uint16 mintedDays,
            uint8 launchBonus,
            uint16 loanStart,
            uint16 loanedDays,
            uint32 interestRate,
            uint8 paymentsMade,
            bool isLoaned
        );

    function stakeDataFetch() external view returns (HEXStake memory);

    function update(ShareCache memory _share) external;
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"inputs":[{"internalType":"uint256","name":"stakeLength","type":"uint256"}],"name":"create","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"destroy","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"goodAccounting","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"hexAddress","type":"address"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"share","outputs":[{"components":[{"internalType":"uint40","name":"stakeId","type":"uint40"},{"internalType":"uint72","name":"stakeShares","type":"uint72"},{"internalType":"uint16","name":"lockedDay","type":"uint16"},{"internalType":"uint16","name":"stakedDays","type":"uint16"}],"internalType":"struct HEXStakeMinimal","name":"stake","type":"tuple"},{"internalType":"uint16","name":"mintedDays","type":"uint16"},{"internalType":"uint8","name":"launchBonus","type":"uint8"},{"internalType":"uint16","name":"loanStart","type":"uint16"},{"internalType":"uint16","name":"loanedDays","type":"uint16"},{"internalType":"uint32","name":"interestRate","type":"uint32"},{"internalType":"uint8","name":"paymentsMade","type":"uint8"},{"internalType":"bool","name":"isLoaned","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"stakeDataFetch","outputs":[{"components":[{"internalType":"uint40","name":"stakeId","type":"uint40"},{"internalType":"uint72","name":"stakedHearts","type":"uint72"},{"internalType":"uint72","name":"stakeShares","type":"uint72"},{"internalType":"uint16","name":"lockedDay","type":"uint16"},{"internalType":"uint16","name":"stakedDays","type":"uint16"},{"internalType":"uint16","name":"unlockedDay","type":"uint16"},{"internalType":"bool","name":"isAutoStake","type":"bool"}],"internalType":"struct HEXStake","name":"","type":"tuple"}],"stateMutability":"view","type":"function"},{"inputs":[{"components":[{"components":[{"internalType":"uint40","name":"stakeId","type":"uint40"},{"internalType":"uint72","name":"stakeShares","type":"uint72"},{"internalType":"uint16","name":"lockedDay","type":"uint16"},{"internalType":"uint16","name":"stakedDays","type":"uint16"}],"internalType":"struct HEXStakeMinimal","name":"_stake","type":"tuple"},{"internalType":"uint256","name":"_mintedDays","type":"uint256"},{"internalType":"uint256","name":"_launchBonus","type":"uint256"},{"internalType":"uint256","name":"_loanStart","type":"uint256"},{"internalType":"uint256","name":"_loanedDays","type":"uint256"},{"internalType":"uint256","name":"_interestRate","type":"uint256"},{"internalType":"uint256","name":"_paymentsMade","type":"uint256"},{"internalType":"bool","name":"_isLoaned","type":"bool"}],"internalType":"struct ShareCache","name":"_share","type":"tuple"}],"name":"update","outputs":[],"stateMutability":"nonpayable","type":"function"}]
*/