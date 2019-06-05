pragma solidity 0.4.25;

contract Election {
    /* Model the state of a candidate */
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    /* Store accounts that have voted */
    mapping(address => bool) public voters;
    /* Store and Fetch Candidates */
    
    mapping(uint => Candidate) public candidates;
    /* Store Candidates Count */
    uint public candidatesCount;

    /* Create a voted event for accounts that already voted */
    event votedEvent (
        uint indexed _candidateId
    );

    constructor () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public {
        /* Make sure they haven't voted before */
        require(!voters[msg.sender]);

        /* Require a valid candidate (already tested) */
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        /* Record that voter has voted */
        voters[msg.sender] = true;

        /* Update vote count of the candidate */
        candidates[_candidateId].voteCount ++;

        /* Trigger voted event */
        emit votedEvent(_candidateId);
    }
}
