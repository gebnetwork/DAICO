pragma solidity ^0.4.23;
import './AccessControl.sol';
import './DateTime.sol';
import './PublicRaising.sol';
import './GEBToken.sol';
import './Vote.sol';

contract Fund is AccessControl, DateTime {
    uint public constant decimals = 18;
    uint public constant TAP = 8 ether;
    uint public applyTap;
    uint public applyStartTime;
    
    uint public constant MIN_VALID_VOTES = 100 * 10 ** uint256(decimals);
    uint public withdrawalTime;
    bool public isContinue = true;
    
    GEBToken public token;
    PublicRaising public raise;
    Vote public voteContract;
    address public refund;
    
    constructor(GEBToken _token, PublicRaising _raise, Vote _vote) public {
        token = _token;
        raise = _raise;
        voteContract = _vote;
    }
        
    function timeValidation(uint _time) private view returns(bool) { 
        bool timeJudge;
        if (_time == 0) {
            timeJudge = true;
        }  
        else {
            _DateTime memory lastTime = parseTimestamp(_time); 
            _DateTime memory today = parseTimestamp(now); 
            if (lastTime.year < today.year) { 
                timeJudge = true;
            }
            else if (lastTime.year == today.year) { 
                if (lastTime.month < today.month) { 
                    timeJudge = true;
                }          
                else {
                    timeJudge = false;
                }
            }
            else {
                timeJudge = false;
            }
        }     
            return timeJudge;    
    }
    
    function addTap(uint _amount) public onlyOwner { 
        require(applyTap == 0); 
        bool timeJudge = timeValidation(applyStartTime);
        if (timeJudge) {
            applyTap = _amount;
            applyStartTime = now;
            voteContract.voteStart(now, now + 3 days, MIN_VALID_VOTES, SafeMath.safeDiv(token.totalSupply(), 800));
        }
    }
    
    function vote(bool isApproved) public whenNotPaused {
        voteContract.vote(msg.sender, isApproved, token.balanceOf(msg.sender));
    }
        
    function revokeVote() public whenNotPaused {
        voteContract.revokeVote(msg.sender);
    }
    
    modifier onlyTokenContract {
        require(msg.sender == address(token));
        _;
    }
    
    function whenTokenTransfer(address _from, address _to, uint _tokens) public onlyTokenContract{
        voteContract.whenTokenTransfer(_from, _to, _tokens);
    }
    
    function finishApplyment() public onlyOwner { 
        bool applymentSuccess = voteContract.voteStop();
        if(!applymentSuccess) {
            applyTap = 0;
        }
    }
        
    function getTap(address _to) public onlyOwner {
        require(_to != address(0) && isContinue);
        bool timeJudge = timeValidation(withdrawalTime); 
        if (timeJudge) {
            raise.sendFund(_to, TAP + applyTap); 
            applyTap = 0;
        } 
    }
        
    function setRefundAddress(address _refund) public onlyOwner { 
        require(_refund != address(0)); 
        refund = _refund;
    }
        
    modifier refundContract() {
        require(msg.sender == refund);
        _;
    }
    
    function programStop() public refundContract {
        isContinue = false;
    } 
}