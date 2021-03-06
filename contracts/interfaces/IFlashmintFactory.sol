// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IFlashmintFactory {
    event TokenCreated(address indexed baseToken, address fmToken, uint);

    function fee() external view returns (uint256);
    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getBaseToken(address fmToken) external view returns (address baseToken);
    function getFmToken(address baseToken) external view returns (address fmToken);
    function allTokens(uint) external view returns (address token);
    function allTokensLength() external view returns (uint);

    function createFlashMintableToken(address baseToken) external returns (address fmToken);

    function setFee(uint256) external;
    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}