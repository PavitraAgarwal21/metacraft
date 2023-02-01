const Web3 = require('web3');
const web3 = new Web3(new Web3.providers.HttpProvider('http://localhost:8545'));

const contractAddress = '0x...'; // address of the deployed contract
const abi = "";
const contract = new web3.eth.Contract(abi, contractAddress);

contract.events.LogSomething({}, (error, event) => {
    console.log(`LogSomething: ${event.returnValues.message} (${event.returnValues.timestamp})`);
});

contract.events.LogSomethingElse({}, (error, event) => {
    console.log(`LogSomethingElse: ${event.returnValues.message} (${event.returnValues.timestamp})`);
});

contract.events.LogEvenMore({}, (error, event) => {
    console.log(`LogSomethingElse: ${event.returnValues.message} (${event.returnValues.timestamp})`);
});
