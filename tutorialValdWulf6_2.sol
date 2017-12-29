pragma solidity ^0.4.0;

contract CallerContract{
    CalledContract toBeCalled = CalledContract(0xb05df6af0073fd592d8f6ee3d5c8ac0ff12e3967);
    
    function getNumberA() constant returns(uint){
        return toBeCalled.getNumber();
    }
    
    function getWordsA() constant returns(bytes32){
        return toBeCalled.getWords();
    }
    
    
    
}



contract CalledContract{
    uint number = 45;
    bytes32 words = "hello geg";
    
    function getNumber() constant returns(uint){
        return number;
    }
    
    function setNumber(uint _number){
        number = _number;
    }
    
    function getWords() constant returns(bytes32){
        return words;
    }
    
}