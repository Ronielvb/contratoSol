// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ContratoStorage {
  string public contrato;

  event DataStoraged(
    string data
  );

  constructor(string  memory contractInit)  {
    contrato = contractInit ;
  }

  function set(string  calldata x) public returns (string memory value) {
    require(bytes(x).length < 100,"Value can not be over 100");
    contrato = x;

    emit DataStoraged(x);

    return contrato;
  }

  function get() public view returns (string  memory retVal) {
      return contrato;
   }

   function query() public view returns (string memory retVal) {
      return contrato;
   }
  
}
