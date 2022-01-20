// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";
import "./Modificadores.sol";
//contract Herencia is Suma, Resta, Modificadores("andres"){ de esta manera se pueden pasar parametros al constructor del padre
contract Herencia is Suma, Resta, Modificadores{

    constructor(string memory nombreNuevo) Modificadores(nombreNuevo){

    }
    
    function sumar(uint numero1, uint numero2) public esOwner view override returns(uint) {
        return numero1 + numero2;
    }

    function resta(uint numero1, uint numero2) public pure override returns(uint) {
        return numero1 - numero2;
    }

    function mirar(uint num, uint num1) public override pure returns(uint){
        return num * num1;
    }
}