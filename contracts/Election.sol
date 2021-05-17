pragma solidity >=0.4.22 <0.8.1;

contract Election{

	// Candidate blueprint
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Fetch Candidates
	mapping(uint => Candidate) public candidates;

	// store accounuts that have voted
	mapping(address => bool) public voters;

	// Store Candidates Count
	uint public candidatesCount;

	// Constructor
	constructor() public{

		// add candidates as soon as contract is executed
		addCandidate("Dheeraj Dagarr");
		addCandidate("Nate Patel");
	}

	// create candidates
	function addCandidate (string memory _name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	function castVote(uint _candidateId) public {
		// require that they haven't voted before
		require(!voters[msg.sender]);

		// require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidatesCount);

		// record that voter has voted
		voters[msg.sender] = true;


		// update candidates vote count
		candidates[_candidateId].voteCount ++;
	}
}