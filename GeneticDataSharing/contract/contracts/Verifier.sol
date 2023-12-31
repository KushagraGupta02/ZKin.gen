// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Verifier {
    function verifyProof(
        uint256[2] memory a,
        uint256[2][2] memory b,
        uint256[2] memory c,
        uint256[1] memory input
    ) public pure returns (bool) {
        // Replace the following with your actual verification logic generated by ZoKrates
        // Example: Check if a * b = c
        return (mulMod(a[0], b[0][0], input[0]) ==
            mulMod(a[1], b[0][1], input[0]) &&
            mulMod(a[0], b[1][0], input[0]) ==
            mulMod(a[1], b[1][1], input[0]) &&
            mulMod(a[0], a[0], input[0]) == mulMod(b[0][0], c[0], input[0]) &&
            mulMod(a[1], a[1], input[0]) == mulMod(b[0][1], c[0], input[0]));
    }

    function mulMod(
        uint256 a,
        uint256 b,
        uint256 input
    ) internal pure returns (uint256) {
        // Safe modular multiplication
        return (a * b) % input;
    }
}
