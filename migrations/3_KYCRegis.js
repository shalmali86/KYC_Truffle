const kyc = artifacts.require("kycRegis");
const Token = artifacts.require("Token");

module.exports = async function(deployer) {
  await deployer.deploy(kyc,Token.address);
  await Token.updateKYC(kycRegis.address);
};
