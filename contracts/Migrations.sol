// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.2 <0.9.0

contract Investment {
    uint256 balanceAmount;
    uint256 depositValue;
    uint256 thresholdAmount;
    uint256 returnOnInvestment;

    event balanceAmount(uint256 depositAmount, uint256 balanceAmount)

    constructor() {
        
    }
}