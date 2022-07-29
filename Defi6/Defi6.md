* Get the signature of pwn() function on remix with CheatDefi6.sol
* Make a "sendTransaction" : await contract.sendTransaction({data:"0xdd365b8b"});
* It will call the fallback function as in delegation it does not exist any pwn() function, which call the pwn() function in the delegate call (because we passed in sendTransaction data value)
* As it is a delegateCall, it execute the logic of delegate and stores the data in the caller, so in the  delegation contract.
