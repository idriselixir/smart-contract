// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;


contract Example {


    address owner;


    struct Counter {
        uint number;
        string description;
    }


    Counter counter;


    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can increment or decrement the counter");
        _;
    }


    constructor(uint initial_value, string memory description) {
        owner = msg.sender;
        counter = Counter(initial_value, description);
    }


    function increment_counter() external onlyOwner {
        counter.number += 1;
    }


    function decrement_counter() external onlyOwner {
        counter.number -= 1;
    }


    function get_counter_value() external view returns(uint) {
        return counter.number;
    }
     // New function to get the description
    function getDescription() public view returns (string memory) {
        return description;
    }
}