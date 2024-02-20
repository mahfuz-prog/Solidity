// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

import "./Storage.sol";

contract Factory is Storage{

    // define an array of contact. Custom datatypes
    Storage[] public SimpleStorageArray;

    function CreateStorage() public  {
        // objcet of type Storage & named SimpleStorage to a new Storage contract
        Storage SimpleStorage = new  Storage();
        SimpleStorageArray.push(SimpleStorage);
    }

    // call Storage contract functions
    function factoryStoreNumber(uint256 _index, uint256 _num) public {
        Storage SimpleStorage = Storage(address(SimpleStorageArray[_index]));
        return SimpleStorage.StoreNumber(_num);
    }

    // select contract from Storage type array using index
    // call this contract function
    function factoryGetNumber(uint256 _contractIndex, uint256 _numberArrayIndex) public view returns(uint256){
        return Storage(address(SimpleStorageArray[_contractIndex])).GetNumber(_numberArrayIndex);
    }
}