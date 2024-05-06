// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./yields-utils-v2/token/ERC20Permit.sol";
import "./yields-utils-v2/access/AccessControl.sol";

contract Gold is ERC20Permit, AccessControl {
    constructor() ERC20Permit("Gold", "Gold", 18) {
        _mint(msg.sender, 2000000 * 10**18);
    }

    function mint(address dst, uint256 wad) external auth returns (bool) {
        return _mint(dst, wad);
    }

    function burn(address dst, uint256 wad) external auth returns (bool) {
        return _burn(dst, wad);
    }
}
