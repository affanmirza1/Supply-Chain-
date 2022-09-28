/**
 *Submitted for verification at Etherscan.io on 2022-04-19
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0;

contract Supplychain{

    address owner;
   
   constructor() public {
      owner = msg.sender;
   }

struct Supplier {
    string name;
}
mapping (string => uint256) products;

Supplier public mySupplier;
// mySupplier.name = 'newSupplier';

    function setSupplierProducts(string memory _productName, uint256 _productQuantity) public {
        products[_productName] = _productQuantity;
    }

    function getSupplierProducts(string memory _productName) view public returns(uint256){
        return products[_productName];
    }
}