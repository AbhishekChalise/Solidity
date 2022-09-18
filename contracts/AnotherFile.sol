// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleFile.sol";
contract Storagefactory{
    SimpleStorage[] public simpleStorageArray;
   
    function createsimplestoragecontract()public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);   
    }
function sfstore(uint _simpleStorageIndex,uint256 _simpleStorageNumber)public{
    //Adderss
    //ABI
}

}
