/**
 *Submitted for verification 
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0;

contract Supplychain{
    // address of user
    address owner;
   
   // constructor called everytime when code is run
   constructor() public {
      owner = msg.sender;
   }

// using struct for grouping of relevant data under supplier
struct Supplier {
    string name;
    string entity_name;
    string role;
    string email;
    string message;

}
// mapping string(name as key) & uint256(stock as value)
mapping (string => uint256) products;

//variable for struct
Supplier public mySupplier;
// mySupplier.name = 'newSupplier';
    
    function setSupplierProducts(string memory _productName, uint256 _productID) public {
        // name and quantity as input
        products[_productName] = _productID;

    }

    function setrole(string memory _role) public{
        mySupplier.role = _role;
    }

    function setemail(string memory _email) public{
        mySupplier.email = _email;
    }

    function setentity_name(string memory _entityname) public{
        mySupplier.entity_name = _entityname;
    }

    function setmessage(string memory _message) public{
        mySupplier.message = _message;
    }

    function setall(string memory _role, string memory _email, string memory _entityname, string memory _message) public{
        mySupplier.role = _role;
        mySupplier.email = _email;
        mySupplier.entity_name = _entityname;
        mySupplier.message = _message;
    }
    function getSupplierProducts(string memory _productName) view public returns(uint256){
        //  giving product name and getting quantity as output
        return products[_productName];
    }
}
