pragma solidity ^0.4.24;

contract Election{
  // model a candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

  // store candidate
  // fetch candidate
    mapping (uint => Candidate) public candidates;

  // store candidate count
    uint public candidateCount;

    function Election () public{
        addCandidate("MaIn9");
        addCandidate("Vegetable English");
    }

    function addCandidate(string _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}
