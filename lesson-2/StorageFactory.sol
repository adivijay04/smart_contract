// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./simpleStorage.sol";

contract storageFactory{
    SimpleStorage[] public storeArray;

    function createStorage() public {
        SimpleStorage stor = new SimpleStorage();
        storeArray.push(stor);
    }

    function sfStore(uint256 _simpleIndex, uint256 _simpleNum) public {
        SimpleStorage stor = storeArray[_simpleIndex];
        stor.store(_simpleNum);
    }

    function sfGet(uint256 _simpleIndex) public view returns(uint256){
        SimpleStorage stor = storeArray[_simpleIndex];
        return stor.retrieve();
    }
}
