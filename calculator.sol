pragma solidity ^0.8.9;
contract Calculator {
    string wt = "Welcome ";

    //unint = uint256
    //int = int256
    function add(int a, int b) public returns (int) {
     int ans = int(a) + int(b);
     return ans;
    }

    function sub(int a, int b) public returns (int) {
     int ans = int(a) - int(b);
     return ans;
    }

    function mul(uint a, uint b) public returns (uint) {
     uint ans = uint(a) * uint(b);
     return ans;
    }

    function div(uint a, uint b) public returns (uint) {
     uint ans = uint(a) / uint(b);
     return ans;
    }

    function mod(uint a, uint b) public returns (uint) {
     uint ans = uint(a) % uint(b);
     return ans;
    }

    function hello(string memory name) public view returns (string memory) {
      string memory Message = string(bytes.concat(bytes(wt), bytes(name)));
      return Message;
    }
   }
