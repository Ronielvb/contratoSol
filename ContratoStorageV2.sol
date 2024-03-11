pragma solidity ^0.8.1;

contract ContratoStorage {
    
    struct Contrato{
        string nucontrato;
        string data;
    }

    mapping(string => Contrato) public contratos;

    function pushToContrato(string  memory nucontrato, string memory data) public{
        contratos[nucontrato]= Contrato(nucontrato,data);
    }
    
    function GetContratos(string memory nucontrato) public view returns (string memory data){
        return(contratos[nucontrato].data);
    }
}
