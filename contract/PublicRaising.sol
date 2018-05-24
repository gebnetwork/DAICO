pragma solidity ^0.4.23;

import './AccessControl.sol';
import './SafeMath.sol';
import './GEBToken.sol';

contract PublicRaising is AccessControl {
    uint public constant decimals = 18;
    uint public round;
    uint public price;
    uint public startTime;
    uint public endTime;
    uint256 public saleTokens;
    uint256 public leftTokensUpperLimit;
    
    struct raiseParticipant {
        address participant;
        uint value;
        uint tokens;
    }
    raiseParticipant[] public raiseParticipants;
    
    bool public inRaising;
    
    GEBToken public token;
    address public fund;
    address public refund;
    
    constructor(GEBToken _token) public {
        token = _token;
    }
    
    function newRaisingRound(uint _price, uint _startTime, uint _endTime, uint256 _saleTokens, uint256 _leftTokensUpperLimit) public onlyOwner {
        require(!inRaising && _price > 0 && _startTime > 0 && _endTime > 0 && _endTime > _startTime && _leftTokensUpperLimit >= 0);
        uint256 tokenWithDecimals = SafeMath.safeMul(_saleTokens, 10 ** uint256(decimals));
        require(token.balanceOf(address(this)) >= tokenWithDecimals);
        round = SafeMath.safeAdd(round, 1);
        price = _price;
        startTime = _startTime;
        endTime = _endTime;
        saleTokens = tokenWithDecimals;
        leftTokensUpperLimit = SafeMath.safeMul(_leftTokensUpperLimit, 10 ** uint256(decimals));
        inRaising = true;
    }
    
    function () payable public whenNotPaused {
        require(inRaising && msg.sender != owner);
        uint getTokens = SafeMath.safeMul(msg.value, price);
        require(saleTokens >= getTokens);
        saleTokens = SafeMath.safeSub(saleTokens, getTokens);
        raiseParticipants.push(raiseParticipant({participant: msg.sender, value: msg.value, tokens: getTokens}));
    }
    
    function finishRaise() public onlyOwner {
        // require(!inRaising && now > endTime);
        require(inRaising);
        if (saleTokens > leftTokensUpperLimit) {
            for (uint i = 0; i < raiseParticipants.length; i++) {
                raiseParticipants[i].participant.transfer(raiseParticipants[i].value);
            }
        }
        else {
            for (uint j = 0; j < raiseParticipants.length; j++) {
                token.transfer(raiseParticipants[j].participant, raiseParticipants[j].tokens);
            }
        }
        delete raiseParticipants;
        inRaising = false;
    }
    
    modifier fundAndRefundContract() {
        require(msg.sender == fund || msg.sender == refund);
        _;
    }
    
    function setFundAddress(address _fund) public onlyOwner {
        require(_fund != address(0));
        fund = _fund;
    }
    
    function setRefundAddress(address _refund) public onlyOwner {
        require(_refund != address(0));
        refund = _refund;
    }
    
    function sendFund(address _to, uint _value) public fundAndRefundContract {
        if (_value > address(this).balance) {
            _to.transfer(address(this).balance);
        }
        else {
            _to.transfer(_value);
        }
    }
}