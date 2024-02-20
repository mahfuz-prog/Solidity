// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    mapping(address => uint256) public fund_list;
    function fund() public payable{
        // fund_list address initialized 0 value.
        // += used to override the value
        fund_list[msg.sender] += msg.value;
    }

    function get_version() public view returns (uint256){
        AggregatorV3Interface price_feed = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
        return price_feed.version();
    }
}

//0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419