// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract SimpleStorage {

    // el método public, hace ue la varable sea pública
    uint256 public numberStorage;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
     // el parámetro public, hace que la función sea accesible, fuera el contrato
    function set(uint256 num) public {
        numberStorage = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    // view hace referencia a que esta función no va cambiar nada en el contrato, solo devuelve un valor
    function get() public view returns (uint256){
        return numberStorage;
    }
}