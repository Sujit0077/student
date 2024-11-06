// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {

    struct Student {
        uint id;
        string name;
        uint age;
    }

    Student[] public students;

    fallback() external payable {}

    function addStudent(uint _id, string memory _name, uint _age) public {
        students.push(Student({ id: _id, name: _name, age: _age }));
    }

    function getStudent(uint index) public view returns (uint, string memory, uint) {
        require(index < students.length, "Index out of bounds");
        Student memory s = students[index];
        return (s.id, s.name, s.age);
    }

    function getStudentCount() public view returns (uint) {
        return students.length;
    }
}
