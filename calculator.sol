// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract Calculator {
    string wt = "Welcome ";

    function strcmp(string memory a, string memory b) private pure returns (bool) {
    return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
     }

    function add(int a, int b) private returns (int) {
     int ans = int(a) + int(b);
     return ans;
    }

    function sub(int a, int b) private returns (int) {
     int ans = int(a) - int(b);
     return ans;
    }

    function mul(int a, int b) private pure returns (int) {
     int ans = int(a) * int(b);
     return ans;
    }

    function div(int a, int b) private returns (int) {
     int ans = int(a) / int(b);
     return ans;
    }

    function mod(int a, int b) private pure returns (int) {
     int ans = int(a) % int(b);
     return ans;
    }

    function calc(int a, int b, string memory ops) public returns (int){
      require(!strcmp(ops, ""), "variable ops is empty");
      if(strcmp(ops,"+")){
     return add(a, b);
      }
      if(strcmp(ops,"-")){
     return sub(a, b);
      }
      if(strcmp(ops,"/")){
     return div(a, b);
      }
      if(strcmp(ops,"*")){
     return mul(a, b);
      }
      if(strcmp(ops,"%")){
     return mod(a, b);
      }
    }

    function hello(string memory name) public view returns (string memory) {
      string memory Message = string(bytes.concat(bytes(wt), bytes(name)));
      return Message;
    }
   }
