
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WaterTracker {

    uint public totalWater;  // This will store total water consumed in ml

    // Constructor runs only once when the contract is deployed
    constructor() {
        totalWater = 0;  // Start with 0 ml of waterFile explorer

    }

    // This function lets you add water (example: 250, 500)
    function addWater(uint amount) public {
        totalWater = totalWater + amount;
    }
}
