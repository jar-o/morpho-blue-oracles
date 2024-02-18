// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import {IERC4626} from "./IERC4626.sol";
import {AggregatorV3Interface} from "./AggregatorV3Interface.sol";
import {IOracle} from "../../../lib/morpho-blue/src/interfaces/IOracle.sol";

/// @title IChainlinkOracle
/// @author Morpho Labs
/// @custom:contact security@morpho.org
/// @notice Interface of ChainlinkOracle.
interface IChainlinkOracle is IOracle {
    /// @notice Returns the address of the base ERC4626 vault.
    function BASE_VAULT() external view returns (IERC4626);

    /// @notice Returns the base vault conversion sample.
    function BASE_VAULT_CONVERSION_SAMPLE() external view returns (uint256);

    /// @notice Returns the address of the quote ERC4626 vault.
    function QUOTE_VAULT() external view returns (IERC4626);

    /// @notice Returns the quote vault conversion sample.
    function QUOTE_VAULT_CONVERSION_SAMPLE() external view returns (uint256);

    /// @notice Returns the address of the first Chainlink base feed.
    function BASE_FEED_1() external view returns (AggregatorV3Interface);

    /// @notice Returns the address of the second Chainlink base feed.
    function BASE_FEED_2() external view returns (AggregatorV3Interface);

    /// @notice Returns the address of the first Chainlink quote feed.
    function QUOTE_FEED_1() external view returns (AggregatorV3Interface);

    /// @notice Returns the address of the second Chainlink quote feed.
    function QUOTE_FEED_2() external view returns (AggregatorV3Interface);

    /// @notice Returns the price scale factor, calculated at contract creation.
    function SCALE_FACTOR() external view returns (uint256);
}
