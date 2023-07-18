// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.10;

contract Vuln{
    uint public balance;
    constructor()public{
        balance = 10 ether;
    }
    function reentrancy(address payable receiver,uint amount)external{
        receiver.transfer(amount);
        balance-=amount;

    }
}