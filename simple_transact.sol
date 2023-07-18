// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract hello{
    uint256 public favNum;

    struct humans {
        uint256 favNum;
        string name;
    }
    humans[] public pupil;

    mapping (string => uint256) public nameTonum;

    //humans public people = humans({favNum: 25, name: "Adith"});

    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

    //uint256 public  allo = 5;
    //function somet(uint256 _allo) public {
      //  allo = _allo;
    //}

    function retrieve() public view returns (uint256){
        return favNum;
    }

    function addPerson(uint256 _favNum, string memory _name) public {
        //humans memory newPerson = humans({favNum: _favNum, name: _name});
        pupil.push(humans(_favNum, _name));
        nameTonum[_name] = _favNum;

    }
}
