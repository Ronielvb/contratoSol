pragma solidity ^0.8.1;

contract ContratoStorage {
    
    struct Contrato{
        string nucontrato;
        string dado;
    }

    mapping(string => Contrato) public contratos;

    function pushToContrato(string  memory nucontrato, string memory _data) public{
        contratos[nucontrato]= Contrato(nucontrato,_data);
    }
    
    function GetContratos(string memory nucontrato) public view returns (string memory _dado){
        return(contratos[nucontrato].dado);
    }
}