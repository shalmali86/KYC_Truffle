const Wallet = require('ethereumjs-wallet');
const Util = require('ethereumjs-util');

const devWallet = Wallet.fromV3(require('./dev/wallet.json'), '111');
const testnetWallet = Wallet.fromV3(require('./testnet/wallet.json'), '111');
const liveWallet = Wallet.fromV3(require('./live/wallet.json'), '111');

module.exports = {
    devWallet,
    testnetWallet,
    liveWallet
};
