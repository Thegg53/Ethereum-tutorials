pragma solidity ^0.4.0;

contract CustodialContract{
    
    address client;
    bool _switch = false;
    
    event UpdateStatus(string _msg);
    event UserStatus(string _msg, address user, uint ammount);
    
    function CustodialContract(){
        client = msg.sender;
    }
    
    modifier ifClient(){
        if(msg.sender != client){
            throw;
        }
        _;
    }
    
    function depositFunds() payable {
        UserStatus('user has deposited', msg.sender, msg.value);
    }
    
    function withdrawFunds(uint amount) ifClient{
        if(client.send(amount)){
            UpdateStatus('user has transfered money');
            _switch = true;
        } else {
            _switch = false;
        }
    }
    
    function getFunds() ifClient constant returns(uint){
        UpdateStatus('soemone called a getter');
        return this.balance;
    }
    
    
}