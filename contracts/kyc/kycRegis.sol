pragma solidity ^0.4.24;

import "./kycRegis_ds.sol";

contract kycRegis is kycRegis_ds{

    constructor (address _tokC )
        public
    {
        owners = msg.sender;
        TokC = Token(_tokC);
    }

    function setRate( uint256 _rate )
        isOwner
        public
    {
        rate = _rate;
    }

    function enableServiceProvider( address _provider )
        isKYCProviderDisabled(_provider)
        isOwner
        public
    {
        kycProvider[_provider] = true;
    }

    function disableServiceProvider( address _provider )
        isKYCProviderEnabled(_provider)
        isOwner
        public
    {
        kycProvider[_provider] = false;
    }

    // Easter Eggs are here
    function setKYCdetails( bytes32 _hash , uint8 _kycType )
        isKYCProvider
        public
    {
        kycDS[_hash] = kycStruct( _kycType , msg.sender , true);
    }

    function disableKYC( bytes32 _hash )
        isOwner
        public
    {
        kycDS[_hash].state = false;
    }

    function fetcKYC( bytes32 _hash )
        isKYCProvider
        isValipurchase( _hash , msg.sender )
        public
        view
        returns( uint8 _type , address _Addr , bool _kycstate  )
    {
        _type = kycDS[_hash].kycType;
        _Addr = kycDS[_hash].verifier;
        _kycstate = kycDS[_hash].state;
    }

    function fetcKYCState( bytes32 _hash )
        isKYCProvider
        isValipurchase( _hash , msg.sender )
        public
        view
        returns( bool _kycstate  )
    {
        _kycstate = kycDS[_hash].state;
    }

    function access( bytes32 _hash )
        isNotValipurchase( _hash , msg.sender )
        isValibalance
        isKYCProvider
        public
    {
        kycPurchase[_hash][msg.sender] = true;
        TokC.itransfer(msg.sender,kycDS[_hash].verifier,rate);
    }

}
