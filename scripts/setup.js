const kycRegis = artifacts.require("kycRegis");
const Token = artifacts.require("Token");

var p = Token.at(Token.address);
p.updateKYC(kycRegis.address);
