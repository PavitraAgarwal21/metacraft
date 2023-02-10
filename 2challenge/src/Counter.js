import {React, useState} from 'react'
import {ethers} from 'ethers'
import contract_abi from './Contracts/counter.json'
const Counter = () => {
	// deploy simple token contract and paste deployed contract address here. This value is local ganache chain
	let contract_address = '0xf037CEd131f04bcF49A27EC25d81E45cE0C4f817';
	const provider = new ethers.providers.JsonRpcProvider(); // we connect to the local host 8545 
	//provider is to only read the blockchain 
	const signer = provider.getSigner(); // to call the function where we udate the blockchain 
const [valueOfI , setI] = useState(0);
	const _contract = new ethers.Contract(contract_address, contract_abi, provider); // making the _contract  class
	const _contract_signer = _contract.connect(signer); // connect the contract class with the signer which are responsoible for updating the blockchain 

const getI = async() =>{
	let _i = await _contract._i();
	setI(_i.toString());
	console.log(valueOfI);
}
const incI = async() =>{
	  await _contract_signer._inc();
	  let _i = await _contract._i();
	setI(_i.toString());
}

const decI = async () =>{
	await _contract_signer._dec();
	let _i = await _contract._i();
	setI(_i.toString());
}


const setZero = async() =>{
	await _contract_signer._setzero() ;
	let _i = await _contract._i();
	setI(_i.toString());
}
	return (
	<div >
			 <h3> The Value of I ----- {valueOfI} </h3>
			 <button onClick={getI}>value of i </button>
			<button onClick={incI}>increase </button>
			<button onClick={decI}>decrese</button> 
			<button onClick={setZero} >setzero</button>
		</div>
	)
}
export default Counter;