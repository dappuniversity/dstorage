//Import Contractconst DStorage = artifacts.require("DStorage");
const DStorage = artifacts.require("DStorage")

module.exports = function(deployer) {
	//Deploy Contract
	deployer.deploy(DStorage)

};
