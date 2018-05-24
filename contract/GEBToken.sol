pragma solidity ^0.4.23;

import './SafeMath.sol';
import './AccessControl.sol';
import './Fund.sol';
import './Refund.sol';

contract GEBToken is AccessControl {
    string public constant name = "GEB DAICO";
    string public constant symbol = "GEB";
    uint8 public _decimals = 18;
    uint256 public _totalSupply = 1000000000 * 10 ** uint256(_decimals);
    
    mapping(address => uint256) balances;
    mapping(address => mapping (address => uint256)) allowed;
    
    Fund public fund;
    Refund public refund;
    
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    
    constructor() public {
        balances[owner] = _totalSupply;
    }
    
    function totalSupply() public view returns(uint256) {
          return _totalSupply;
    }
    
    function decimals() public view returns(uint8) {
        return _decimals;
    }
    
    function balanceOf(address _owner) public view returns(uint256) {
        return balances[_owner];
    } 
    
    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
        if (balances[msg.sender] >= _value && _value > 0
            && msg.sender != _to && _to != address(0)) {
                balances[msg.sender] = SafeMath.safeSub(balances[msg.sender], _value);
                balances[_to] = SafeMath.safeAdd(balances[_to], _value);
                emit Transfer(msg.sender, _to, _value);
                fund.whenTokenTransfer(msg.sender, _to, _value);
                refund.whenTokenTransfer(msg.sender, _to, _value);
                return true;
            }
        else {return false;}
    } 
    
    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool) {
        if(balances[_from] > _value && _value > 0
            && _from != _to && _from != address(0)
            && _to != address(0) && allowed[_from][msg.sender] > _value) {
                balances[_from] = SafeMath.safeSub(balances[_from], _value);
                allowed[_from][msg.sender] = SafeMath.safeSub(allowed[_from][msg.sender], _value);
                balances[_to] = SafeMath.safeAdd(balances[_to], _value);
                emit Transfer(_from, _to, _value);
                fund.whenTokenTransfer(_from, _to, _value);
                refund.whenTokenTransfer(_from, _to, _value);
                return true;
            }
        else {return false;}
    }
    
    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    
    function allowance(address _owner, address _spender) public view returns (uint256) {
        return allowed[_owner][_spender];
    }
    
    function addTotal(uint256 _amount) public whenNotPaused onlyOwner {
        _totalSupply = SafeMath.safeAdd(_totalSupply, SafeMath.safeMul(_amount, 10 ** uint256(_decimals)));
        balances[owner] = SafeMath.safeAdd(balances[owner], SafeMath.safeMul(_amount, 10 ** uint256(_decimals)));
    }
    
    function setFundAddress(address _fund) public onlyOwner {
        require(_fund != address(0));
        fund = Fund(_fund);
    }
    
    function setRefundAddress(address _refund) public onlyOwner {
        require(_refund != address(0));
        refund = Refund(_refund);
    }
}