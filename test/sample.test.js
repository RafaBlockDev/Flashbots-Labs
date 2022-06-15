const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("SandwichAttack", function () {
  it("Should return the the contract deployed", async function () {
    const Sandwich = await ethers.getContractFactory("SandwichAttack");
    const sandwich = await Sandwich.deploy("Hello, world!");
    await sandwich.deployed();
  });
});
