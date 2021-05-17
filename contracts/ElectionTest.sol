pragma solidity >=0.4.22 <0.8.1;

contract ElectionTest{

	//solidity will automatically create getter function for this variable
	// app.candidate()  - run this on truffle console
	string public candidate;

	// Constructor
	constructor() public{
		candidate = "Dheeraj";
	}
}