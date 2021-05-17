var ElectionTest = artifacts.require("./ElectionTest.sol");

module.exports = function(deployer) {
  deployer.deploy(ElectionTest);
};
