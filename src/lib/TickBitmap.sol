// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

import "./BitMath.sol";

library TickBitmap {
    function position(
        int24 tick
    ) private pure returns (int16 wordPos, uint8 bitPos) {
        wordPos = int16(tick >> 8);
        bitPos = uint8(uint24(tick % 256));
    }
}
