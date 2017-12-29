pragma solidity ^0.4.0;

contract HelloWorldContract  {
    
    string word = "Hello GRM";
    address issuer;
    
 function HelloWorldContract(){
    issuer = msg.sender; 
 }
    
 
 
 function getWord()  constant returns(string) {
     return word;
 }
 
 function setWord(string newWord) returns(string){
     if(issuer != msg.sender){
         return "this is not the creator";
     } else {
     word = newWord;
     return "This is the creator";    
     }
     
 }
}