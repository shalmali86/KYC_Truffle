pragma solidity ^0.4.24;

contract owner{
    address public owners;

    modifier isOwner(){
        require( msg.sender == owners);
        _;
    }

    function changeOwner ( address _addr)
        isOwner
        public
    {
        owners = _addr;
    }
}