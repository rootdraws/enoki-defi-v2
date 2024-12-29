// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../MushroomLib.sol";

abstract contract IMushroomMetadata {
    using MushroomLib for MushroomLib.MushroomData;
    using MushroomLib for MushroomLib.MushroomType;

    function hasMetadataAdapter(address nftContract) external virtual view returns (bool);

    function getMushroomData(
        address nftContract,
        uint256 nftIndex,
        bytes calldata data
    ) external virtual view returns (MushroomLib.MushroomData memory);

    function setMushroomLifespan(
        address nftContract,
        uint256 nftIndex,
        uint256 lifespan,
        bytes calldata data
    ) external virtual;

    function setResolver(address nftContract, address resolver) external virtual;

    event MushroomLifespanSet(address indexed nftContract, uint256 indexed nftIndex, uint256 lifespan);
    event ResolverSet(address indexed nftContract, address resolver);
}