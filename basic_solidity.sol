//SPDX-License-Identifier: MIT 

pragma solidity >= 0.5.0 < 0.9.0;


struct Student {
    uint rollNo;
    string name;
}
contract StudentInfo {

    Student public stud;

    constructor(uint _rollNo, string memory _name) {
        stud.rollNo = _rollNo;
        stud.name = _name;
    }

    //to change the value we have to implement a setter function
    function changeValue(uint _rollNo, string memory _name) public {
        Student memory new_student = Student( {
            rollNo : _rollNo,
            name : _name
        });
        stud = new_student;
    }

    //array
    string[] public arr;

    function getArray() public view returns (string[] memory) {
        return arr;
    }

    function pushToArray(string memory newValue) public {
        arr.push(newValue);
    }

    event Log(string func, uint gas);

    fallback() external  {
         emit Log("Fallback", gasleft());
    }
}
