// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "foundry-huff/HuffDeployer.sol";

contract ContractTest is Test {

    address basics;

    function setUp() public {
        basics = HuffDeployer.deploy("Basics");
    }

    function testBasics() public {
        (bool success, bytes memory response) = basics.call("");
        assertEq(response, "Hello, World!");
        assertTrue(success);
    }
}
