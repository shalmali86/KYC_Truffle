const Token = artifacts.require("Token");

module.exports = function(deployer) {
  deployer.deploy(Token,"KYC Token" , "Token For IIIT KYC DEMO" , "KYCT");
};
