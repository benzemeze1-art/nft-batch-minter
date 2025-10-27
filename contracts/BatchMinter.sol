// contracts/BatchMinter.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BatchMinter is ERC721 {
    uint256 public total;

    constructor() ERC721("BatchNFT", "BNFT") {}

    function batchMint(uint256 amount) external {
        for (uint256 i = 0; i < amount; i++) {
            _safeMint(msg.sender, ++total);
        }
    }
}
