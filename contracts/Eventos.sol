// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EstructuraDeControl {

    uint [] public numeros;
    string public resultado;

    event NotificacionDeCondicion(bool condicion);

    constructor (bool condicion){
        if (condicion){
            resultado= 'Condicion True';
        }
        else{
            resultado = 'Condicion Flase';
        }

        emit NotificacionDeCondicion(condicion);

        for (uint i = 0 ; i<10; i++){
            numeros.push(i+1);
        }
    }
}