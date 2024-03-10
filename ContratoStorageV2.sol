pragma solidity ^0.8.1;

contract ContratoStorage {
    string[] contratos;

    function pushToContrato(string memory _data) public{
        contratos.push(_data);
    }
    
    function GetAllContratos() view public returns(string[] memory){
        return contratos;
    }

    function GetContratos(uint x) view public returns(string memory){
        return contratos[x];
    }

    function pushSContratosArray(string[] memory contratoData) public{
        for (uint i=0; i < contratoData.length; i++) {
           contratos.push(contratoData[i]);
        }
    }
}