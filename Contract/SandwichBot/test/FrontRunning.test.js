const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("FrontRunning", function () {
  it("Should return the the contract deployed", async function () {
    console.log("Compiling FrontRunning contract");
    const FrontRunning = await ethers.getContractFactory("FrontRunning");
    console.log("Deploying FrontRunning contract");
    const frontRunning = await FrontRunning.deploy("FrontRunning 🚀");
    await frontRunning.deployed();
    console.log("FrontRunning contract has been deployed to: ", frontRunning.address);
  });
});
