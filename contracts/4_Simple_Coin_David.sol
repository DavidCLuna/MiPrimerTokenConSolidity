// SPDX-License-Identifier: GPL-3.0
/*pragma solidity >=0.7.0 <0.9.0;

contract CoinDavid{
    address public minter; // permite guardar las direcciones públicas
    mapping (address => uint) public balances; // permite guardar una lista de datos, en este caso vamos a guardar el saldo de la cuenta y que sea público

    constructor(){
        minter = msg.sender; // llamó al contrato y lo creó
    }

    // receiver, va ser la direccion de la persona a la quese le va a enviar lamoneda creada
    // amount, va ser la cantidad de esa moneda que se va crear
    function mint(address receiver, uint amount) public{
        require(msg.sender == minter); //
        require(amount < 1e60);
        balances[receiver] += amount;
    }

      
}
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GodCoin is ERC20 {
    constructor() ERC20("GodCoin", "GDC") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}