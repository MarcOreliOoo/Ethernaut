```
function cheat(address payable _adr, uint256 _gas) public payable {
    (bool sent, ) = _adr.call{value: msg.value, gas: _gas}("");
    require(sent, "Failed to send value!");
}
```
 
 * Create a contract with that instance
 * Create a fallback that revert for instance
 
 * What if a transaction doesnt pass because code error 3 not enough gas ? Increase the gas with the parameter for instance 1000000. 
 * What if a transaction is stucked in metamask : get the nonce of the first transaction stucked, change param in metamask to custom nonce, do a simple transaction : sending eth to another account and specify the nonce previously get. Then do the transaction, once done, all remains transaction should be gone, or failed. Then start over.
