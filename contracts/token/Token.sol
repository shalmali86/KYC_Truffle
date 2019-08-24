pragma solidity 0.4.25;

import "../lib/owner.sol";
import "../lib/erc20/ERC20.sol";

contract Token is owner, ERC20{

    address public kycR;

    modifier isKYCContract(){
        require(msg.sender == kycR);
        _;
    }

    modifier isKYCContractUnSet(){
        require(kycR == address(0));
        _;
    }

    constructor( string _name , string _desc , string _symbol )
        public
    {
        name = _name;
        symbol = _symbol;
        desc = _desc;
        owners = msg.sender;
    }

    function updateKYC ( address _kycC )
        isKYCContractUnSet
        public
        isOwner
    {
        kycR = _kycC;
    }

    function mint ( address _addr , uint256 _amt )
        public
        isOwner
    {
        _mint(_addr,_amt);
    }

    function burn ( address _addr , uint256 _amt )
        public
        isOwner
    {
        _burn(_addr,_amt);
    }

    function transfer(address recipient, uint256 amount)
        public
        returns (bool)
    {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function itransfer(address sender,address recipient, uint256 amount)
        isKYCContract
        public
        returns (bool)
    {
        _transfer(sender, recipient, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount)
        public
        returns (bool)
    {
        require(_allowances[sender][msg.sender] >= amount, "ERC20: Not enough in deligation");
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }

}
