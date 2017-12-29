pragma solidity ^0.4.0;

contract HelloWorldContract  {
 string word = "Hello GRM";
 
 function getWord()  constant returns(string) {
     return word;
 }
 
 function setWord(string newWord) returns(string){
     word = newWord;
     return word;
 }
}