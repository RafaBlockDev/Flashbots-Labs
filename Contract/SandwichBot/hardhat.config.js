require("dotenv").config();

require("@nomiclabs/hardhat-etherscan");
require("@nomiclabs/hardhat-waffle");
require("hardhat-gas-reporter");
require("solidity-coverage");

module.exports = {
  solidity: "0.8.4",
  networks: {
    mumbai: {
      url: process.env.ALCHEMY_MUMBAI_URL,
      accounts:
        [process.env.PRIVATE_KEY_MUMBAI]
    },
  },
  settings: {
    optimizer: {
      enabled: true,
      runs: 500
    }
  },
  gasReporter: {
    srcPath: "./contracts",
    currency: "USD",
    gasPrice: 21,
    enabled: true,
    token: 'ETH',
    gasPriceAPI: "https://api.etherscan.io/api?module=proxy&action=eth_gasPrice",
    showTimeSpent: true,
    coinmarketcap: process.env.COINMARKETCAP_API_KEY
  }
};
