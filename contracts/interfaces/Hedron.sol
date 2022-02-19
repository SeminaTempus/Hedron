// SPDX-License-Identifier: MIT
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.2. SEE SOURCE BELOW. !!
pragma solidity 0.8.9;

import "../declarations/Internal.sol";

interface IHedron {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Claim(uint256 data, address indexed claimant, uint40 indexed stakeId);
    event LoanEnd(
        uint256 data,
        address indexed borrower,
        uint40 indexed stakeId
    );
    event LoanLiquidateBid(
        uint256 data,
        address indexed bidder,
        uint40 indexed stakeId,
        uint40 indexed liquidationId
    );
    event LoanLiquidateExit(
        uint256 data,
        address indexed liquidator,
        uint40 indexed stakeId,
        uint40 indexed liquidationId
    );
    event LoanLiquidateStart(
        uint256 data,
        address indexed borrower,
        uint40 indexed stakeId,
        uint40 indexed liquidationId
    );
    event LoanPayment(
        uint256 data,
        address indexed borrower,
        uint40 indexed stakeId
    );
    event LoanStart(
        uint256 data,
        address indexed borrower,
        uint40 indexed stakeId
    );
    event Mint(uint256 data, address indexed minter, uint40 indexed stakeId);
    event Transfer(address indexed from, address indexed to, uint256 value);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function balanceOf(address account) external view returns (uint256);

    function calcLoanPayment(
        address borrower,
        uint256 hsiIndex,
        address hsiAddress
    ) external view returns (uint256, uint256);

    function calcLoanPayoff(
        address borrower,
        uint256 hsiIndex,
        address hsiAddress
    ) external view returns (uint256, uint256);

    function claimInstanced(
        uint256 hsiIndex,
        address hsiAddress,
        address hsiStarterAddress
    ) external;

    function claimNative(uint256 stakeIndex, uint40 stakeId)
        external
        returns (uint256);

    function currentDay() external view returns (uint256);

    function dailyDataList(uint256)
        external
        view
        returns (
            uint72 dayMintedTotal,
            uint72 dayLoanedTotal,
            uint72 dayBurntTotal,
            uint32 dayInterestRate,
            uint8 dayMintMultiplier
        );

    function decimals() external view returns (uint8);

    function decreaseAllowance(address spender, uint256 subtractedValue)
        external
        returns (bool);

    function hsim() external view returns (address);

    function increaseAllowance(address spender, uint256 addedValue)
        external
        returns (bool);

    function liquidationList(uint256)
        external
        view
        returns (
            uint256 liquidationStart,
            address hsiAddress,
            uint96 bidAmount,
            address liquidator,
            uint88 endOffset,
            bool isActive
        );

    function loanInstanced(uint256 hsiIndex, address hsiAddress)
        external
        returns (uint256);

    function loanLiquidate(
        address owner,
        uint256 hsiIndex,
        address hsiAddress
    ) external returns (uint256);

    function loanLiquidateBid(uint256 liquidationId, uint256 liquidationBid)
        external
        returns (uint256);

    function loanLiquidateExit(uint256 hsiIndex, uint256 liquidationId)
        external
        returns (address);

    function loanPayment(uint256 hsiIndex, address hsiAddress)
        external
        returns (uint256);

    function loanPayoff(uint256 hsiIndex, address hsiAddress)
        external
        returns (uint256);

    function loanedSupply() external view returns (uint256);

    function mintInstanced(uint256 hsiIndex, address hsiAddress)
        external
        returns (uint256);

    function mintNative(uint256 stakeIndex, uint40 stakeId)
        external
        returns (uint256);

    function name() external view returns (string memory);

    function proofOfBenevolence(uint256 amount) external;

    function shareList(uint256)
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

    function symbol() external view returns (string memory);

    function totalSupply() external view returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"inputs":[{"internalType":"address","name":"hexAddress","type":"address"},{"internalType":"uint256","name":"hexLaunch","type":"uint256"}],"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"owner","type":"address"},{"indexed":true,"internalType":"address","name":"spender","type":"address"},{"indexed":false,"internalType":"uint256","name":"value","type":"uint256"}],"name":"Approval","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"claimant","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"Claim","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"borrower","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"LoanEnd","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"bidder","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"},{"indexed":true,"internalType":"uint40","name":"liquidationId","type":"uint40"}],"name":"LoanLiquidateBid","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"liquidator","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"},{"indexed":true,"internalType":"uint40","name":"liquidationId","type":"uint40"}],"name":"LoanLiquidateExit","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"borrower","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"},{"indexed":true,"internalType":"uint40","name":"liquidationId","type":"uint40"}],"name":"LoanLiquidateStart","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"borrower","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"LoanPayment","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"borrower","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"LoanStart","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"data","type":"uint256"},{"indexed":true,"internalType":"address","name":"minter","type":"address"},{"indexed":true,"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"Mint","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"from","type":"address"},{"indexed":true,"internalType":"address","name":"to","type":"address"},{"indexed":false,"internalType":"uint256","name":"value","type":"uint256"}],"name":"Transfer","type":"event"},{"inputs":[{"internalType":"address","name":"owner","type":"address"},{"internalType":"address","name":"spender","type":"address"}],"name":"allowance","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"approve","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"balanceOf","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"calcLoanPayment","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"calcLoanPayoff","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"},{"internalType":"address","name":"hsiStarterAddress","type":"address"}],"name":"claimInstanced","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"stakeIndex","type":"uint256"},{"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"claimNative","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"currentDay","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"dailyDataList","outputs":[{"internalType":"uint72","name":"dayMintedTotal","type":"uint72"},{"internalType":"uint72","name":"dayLoanedTotal","type":"uint72"},{"internalType":"uint72","name":"dayBurntTotal","type":"uint72"},{"internalType":"uint32","name":"dayInterestRate","type":"uint32"},{"internalType":"uint8","name":"dayMintMultiplier","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"decimals","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"subtractedValue","type":"uint256"}],"name":"decreaseAllowance","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"hsim","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"addedValue","type":"uint256"}],"name":"increaseAllowance","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"liquidationList","outputs":[{"internalType":"uint256","name":"liquidationStart","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"},{"internalType":"uint96","name":"bidAmount","type":"uint96"},{"internalType":"address","name":"liquidator","type":"address"},{"internalType":"uint88","name":"endOffset","type":"uint88"},{"internalType":"bool","name":"isActive","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"loanInstanced","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"owner","type":"address"},{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"loanLiquidate","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"liquidationId","type":"uint256"},{"internalType":"uint256","name":"liquidationBid","type":"uint256"}],"name":"loanLiquidateBid","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"uint256","name":"liquidationId","type":"uint256"}],"name":"loanLiquidateExit","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"loanPayment","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"loanPayoff","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"loanedSupply","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"hsiIndex","type":"uint256"},{"internalType":"address","name":"hsiAddress","type":"address"}],"name":"mintInstanced","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"stakeIndex","type":"uint256"},{"internalType":"uint40","name":"stakeId","type":"uint40"}],"name":"mintNative","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"name","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"proofOfBenevolence","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"shareList","outputs":[{"components":[{"internalType":"uint40","name":"stakeId","type":"uint40"},{"internalType":"uint72","name":"stakeShares","type":"uint72"},{"internalType":"uint16","name":"lockedDay","type":"uint16"},{"internalType":"uint16","name":"stakedDays","type":"uint16"}],"internalType":"struct HEXStakeMinimal","name":"stake","type":"tuple"},{"internalType":"uint16","name":"mintedDays","type":"uint16"},{"internalType":"uint8","name":"launchBonus","type":"uint8"},{"internalType":"uint16","name":"loanStart","type":"uint16"},{"internalType":"uint16","name":"loanedDays","type":"uint16"},{"internalType":"uint32","name":"interestRate","type":"uint32"},{"internalType":"uint8","name":"paymentsMade","type":"uint8"},{"internalType":"bool","name":"isLoaned","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"symbol","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"totalSupply","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"recipient","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transfer","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"address","name":"recipient","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transferFrom","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"}]
*/