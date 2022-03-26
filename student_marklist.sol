pragma solidity ^0.8.9;
contract Studentml {

  struct Student{
      string name;
      uint[5] mark; //mark of 5 subjects
      uint total;
  }
  mapping(address => Student) MapStudents;
  address[] students;
  address admin;

  constructor() {
      admin = msg.sender;
  }

  function add_student(address _student,string memory _name, uint[5] memory _marks) external returns(uint) {
    require(admin == msg.sender, "Only admin can add Students");
    MapStudents[_student] = Student(_name, _marks, 0);
    MapStudents[_student].total = (MapStudents[_student].mark[0] + MapStudents[_student].mark[1] + MapStudents[_student].mark[2] + MapStudents[_student].mark[3] + MapStudents[_student].mark[4]);
    students.push(_student);
    return(MapStudents[_student].total);
  }

  function view_student(address _student) public view returns(string memory, uint){ //external will throw error in line 40
      Student storage sStudents = MapStudents[_student];
      return (sStudents.name, sStudents.total);
      //return (MapStudents[_student].name, MapStudents[_student].total);
  }
  function max() external view returns(string memory, uint){
      uint i;
      uint largest = 0;
      address first_student;
      for(i = 0; i < students.length; i++){
            if(MapStudents[students[i]].total > largest) {
                largest = MapStudents[students[i]].total;
                first_student = students[i];
            } 
        }
        return view_student(first_student);
  }
  function min() external view returns(string memory, uint){
      uint i;
      uint smallest = 0;
      address last_student;
      for(i = 0; i < students.length; i++){
            if(MapStudents[students[i]].total < smallest) {
                smallest = MapStudents[students[i]].total;
                last_student = students[i];
            } 
        }
        return view_student(last_student);
  }
}