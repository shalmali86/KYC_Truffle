var kycC = artifacts.require("./kycRegis.sol");
var TokC = artifacts.require("./Token.sol");


contract('Test 0 -Basic Tests', function(accounts) {
    console.log("THESE TEST WILL ONLY WORK IN LOCAL NETWORK");
    before(async function(){
        try{

            this.tokC = await TokC.new("KYC Token" , "Token For IIIT KYC DEMO" , "KYCT",{from:accounts[0]});
            this.kycC = await kycC.new(this.tokC.address,{from:accounts[0]});
            await this.tokC.updateKYC(this.tokC.address,{from:accounts[0]});

        }catch(e){
            console.log("ERROR WHILE DEPLOYMENT");
            console.log(e);
        }
    })

    describe('Base Checks - Check Owners', function () {
        it('Token Contract - Check Valid Owners', async function () {
            assert.equal(await this.tokC.owners(), accounts[0]);
        })

        it('KYC Contract - Check Valid Owners', async function () {
            assert.equal(await this.kycC.owners(), accounts[0]);
        })
    })

});
