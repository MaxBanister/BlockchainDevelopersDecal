pragma solidity ^0.4.8;

contract Lab1 {
    function greet() public returns (string){
        return "Hello, World!";
    }
    function fib(int n) public pure returns (int){
        int a = 0;
        int b = 1;
        for (int i = 0; i < n; i++) {
            int temp = b;
            b = a + b;
            a = temp;
        }
        return a;
    }
    function xor(int x1, int x2) public returns (int){
        if (x1 + x2 == 1) {
            return 1;
        }
        return 0;
    }
    function concatenate(string a, string b) public returns (string){
        bytes memory _ba = bytes(a);
        bytes memory _bb = bytes(b);
        string memory abcde = new string(_ba.length + _bb.length);
        bytes memory babcde = bytes(abcde);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) babcde[k++] = _ba[i];
        for (i = 0; i < _bb.length; i++) babcde[k++] = _bb[i];
        return string(babcde);
    }
    function () {
        throw;
    }
}