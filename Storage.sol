// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {

    struct Student {
        string Name;
        uint256 Roll;
    }
    //Student({Name: _name, Roll: _roll});
    // Student(_name, _roll)  Remind index in this case

    // this is a custom datatypes array
    Student[] public student;
    mapping(string => uint256) public StudentMaping;

    function AddStudent(string memory _name, uint256 _roll) public {
        // push to array our custom datatypes which is student struct
        student.push(Student(_name, _roll));

        // like python dictionary
        StudentMaping[_name] = _roll;
    }

    // StoreNumber and GetNumber userd for contract factory call
    uint256[] public Numbers;
    function StoreNumber(uint256 _num) public {
        Numbers.push(_num);
    }

    function GetNumber(uint256 _index) public view returns(uint256){
        return Numbers[_index];
    }
}