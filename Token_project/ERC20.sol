//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
//import ERC20 from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Halittatoken is ERC20{

    //we want to call the constructor present in erc20
    
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol){
        //this is not the hard coding option
        //it is left for the person deploying the contract to provide the name and symbol
        _mint(msg.sender, 100 * (10**18));
        //lets get some tokens for ourselves
        //msg.sender is the person deploying the contract
    }
        function mint() public{
            _mint(msg.sender, 100 * (10**18));
        }


}