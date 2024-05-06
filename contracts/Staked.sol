pragma solidity ^0.8.0;

import "./yields-utils-v2/token/ERC20Rewards.sol";
import "./yields-utils-v2/token/ERC20.sol";

contract Staked is ERC20Rewards {
    constructor(address rewardsToken)
        ERC20Rewards("Staked", "Staked", 18, IERC20(rewardsToken))
    {
        _mint(msg.sender, 2000000 * 10**18);
    }

    function mint(address dst, uint256 wad) external auth returns (bool) {
        return _mint(dst, wad);
    }

    function burn(address dst, uint256 wad) external auth returns (bool) {
        return _burn(dst, wad);
    }
}
