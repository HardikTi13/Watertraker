# 🚰 Water Tracker dApp

A simple and beginner-friendly on-chain Water Tracker built using Solidity and a modern Web3 frontend.  
This project helps users log how much water they consume by recording every entry directly on the blockchain.

---

## 📘 Project Description

The **Water Tracker dApp** is a minimal decentralized application designed to help beginners understand how smart contracts and Web3 frontends interact.  
Users can record their daily water intake, which is permanently stored on-chain for transparency and immutability.

This project demonstrates:
- How to write a simple Solidity contract  
- How to read/write data on the blockchain  
- How to interact with a UI using wagmi/viem  
- How to track transaction states and display feedback to users  

It’s perfect for Web3 learners, students, and hobby builders.

---

## 💡 What It Does

- Lets users **add water intake amounts (in ml)**  
- Stores total water consumed **securely on the blockchain**  
- Allows anyone to **view the cumulative total**  
- Provides a simple and clean UI to interact with the contract  
- Reflects real-time updates after each transaction  

---

## ✨ Features

### 🧩 Smart Contract
- Easy-to-understand Solidity code  
- Function to add water: `addWater(uint amount)`  
- Public getter for total water: `totalWater()`  
- No constructor inputs required—deploy and use immediately  

### 🖥️ Frontend
- Wallet connection required (wallet gating)  
- Add water through an intuitive input field  
- Real-time total water display  
- Full transaction lifecycle feedback (loading → pending → confirmed)  
- Built using **wagmi**, **viem**, and **Next.js**  

### 🔗 Web3 Benefits
- Fully decentralized  
- No backend server required  
- Transparent and permanent on-chain storage  

---

## 📜 Deployed Smart Contract  
**Address:** XXX  
(Replace with the actual deployed contract link when ready)

---

## 🧾 Smart Contract Source Code

```solidity
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
