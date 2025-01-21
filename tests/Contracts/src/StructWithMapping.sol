// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract CrazyStruct {
    struct CrazyStructType {
        mapping(address => mapping(uint256 => bool)) mp;
    }

    uint256 x;
    CrazyStructType S;

    constructor() {
        x = 1;
        S.mp[address(this)][42] = false;
        S.mp[address(this)][type(uint256).max] = true;
    }

    function f() external {
        x = 2;
    }

    function g() external {
    }

    function dummy() external {}
}
