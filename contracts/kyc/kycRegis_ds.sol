pragma solidity ^0.4.24;

import "../lib/owner.sol";
import "../token/Token.sol";

contract kycRegis_ds is owner{

    uint256 public rate;

    Token public TokC;

    mapping ( bytes32 => kycStruct ) kycDS;

    struct kycStruct {
        uint8 kycType;
        address verifier;
        bool state;
    }

    mapping ( bytes32 => mapping( address => bool)) public kycPurchase;

    mapping ( address => bool ) public kycProvider;

    modifier isKYCProvider ( ){
        require( kycProvider[msg.sender] == true );
        _;
    }

    modifier isKYCExist ( bytes32 _hash ){
        require( kycDS[_hash].verifier != address(0));
        _;
    }

    modifier isKYCProviderDisabled ( address _addr ){
        require( kycProvider[_addr] == false );
        _;
    }

    modifier isKYCProviderEnabled ( address _addr ){
        require( kycProvider[_addr] == true );
        _;
    }

    modifier isValibalance ( ){
        require( TokC.balanceOf(msg.sender) >= rate );
        _;
    }

    modifier isValipurchase( bytes32 _hash,  address _addr ){
        require( kycPurchase[_hash][_addr] == true);
        _;
    }

    modifier isNotValipurchase( bytes32 _hash,  address _addr ){
        require( kycPurchase[_hash][_addr] == false);
        _;
    }

}
