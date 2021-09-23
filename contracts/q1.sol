pragma solidity ^0.4.24;


interface Regulator {
    function checkValue(uint amount) external returns (bool);
    function loan() external returns (bool);
}

contract Bank is Regulator {
    uint value=100;
    uint x;
    constructor(uint amount) public {
        value = amount;
    }
    
    function deposit(uint amount) public {
        value += amount;
    }
    
    function withdraw(uint amount) public {
        if (checkValue(amount)) {
            value -= amount;
        }
    }
    
    function balance() public view returns (uint) {
        return value;
    }
    
    function checkValue(uint amount) public returns (bool) {
        
        return value >= amount;
    }
    
    function loan() public returns (bool) {
        return value > 0;
    }
}

contract usercontract is Bank{
    string private name;
    uint  private id;
   
    function setname(string newname) public{
        name=newname;
    }
    function setid(uint newid) public {
        id=newid;
    }
   
    function getname() public view returns (string){
        return name;
    }
    
  
   
    
   
}