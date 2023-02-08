const { ethers } = require("ethers");
const provider = new ethers.providers.JsonRpcProvider(); // we connect to the local host 8545 
//provider is to only read the blockchain 
const signer = provider.getSigner(); // to call the function where we udate the blockchain 
// we upload the contract and address of the uploaded contract is - 
const contract_address = "0x03d7819bAb6d660864c259e5EBad4c596dbCc8B3";
const contract_abi = [
	{
		"inputs": [],
		"name": "_dec",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "_inc",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "_setzero",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "_i",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "i",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
] // abi code is 

const _contract = new ethers.Contract(contract_address, contract_abi, provider); // making the _contract  class
const _contract_signer = _contract.connect(signer); // connect the contract class with the signer which are responsoible for updating the blockchain 
const main =async ()=>{
 let  _i = await _contract._i() ; // calling the view type function from the contract on the blockchain 
 // calling the _i() function
 console.log(_i.toString());   

await _contract_signer._inc(); // calling the incrrement function 
                               // we use the signer function because it change the state variable which are stored on the blockchain 

_i = await _contract._i();
console.log(_i.toString()); // again read the value of the _i


await _contract_signer._dec();
_i = await _contract._i(); 
console.log(_i.toString());

await _contract_signer._setzero();
_i = await _contract._i();
console.log(_i.toString());
}

// all this are reading from the blockchain which gave promisies so we have to wait for 
// so we use all this under the async function 
main();