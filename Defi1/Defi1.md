* Sending transaction in eth to a function payable that is known :
`await contract.contribute.sendTransaction({from:'0xC4df4EBA260b47f700EBB058a27fe3b4Ba44807D', value:toWei('0.0009','ether')});`

* Sending transaction directly with receive() function :
`await web3.eth.sendTransaction({from:'0xC4df4EBA260b47f700EBB058a27fe3b4Ba44807D',to:contract.address, value:toWei('0.0001','ether')})`
