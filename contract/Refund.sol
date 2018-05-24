pragma solidity ^0.4.23;

import './GEBToken.sol';
import './PublicRaising.sol';
import './DateTime.sol';
import './Fund.sol';
import './SafeMath.sol';
import './AccessControl.sol';
import './Vote.sol';

contract Refund is AccessControl, DateTime {
    uint public constant decimals = 18;
    
    uint[4] public FIRST_REFUND_VOTE_TIME = [uint(1551369600), 1567267200, 1582992000, 1598889600];
    uint[4] public SECOND_REFUND_VOTE_TIME = [uint(1554048000), 1569859200, 1585670400, 1601481600];
    
    // uint[4] public FIRST_REFUND_VOTE_TIME = [uint(now), 1567267200, 1582992000, 1598889600];
    // uint[4] public SECOND_REFUND_VOTE_TIME = [uint(now), 1569859200, 1585670400, 1601481600];
    uint8 public REFUND_ROUND = 0;
    uint8 public REFUND_STAGE = 1;
    
    bool public firstStageStatus = false;
    bool public isValid = true;
    
    uint public constant MIN_VALID_VOTES = 100 * 10 ** uint256(decimals);
    
    PublicRaising public raise;
    GEBToken public token;
    Fund public fund;
    Vote public voteContract;
    
    constructor (PublicRaising _raise, GEBToken _token, Fund _fund, Vote _vote) public {
        raise = _raise;
        token = _token;
        fund = _fund;
        voteContract = _vote;
    }
    
    modifier whenValid() {
        require(isValid);
        _;
    }
    
    uint public REFUND_PRICE;
    
    function refundVoteStart() public onlyOwner whenValid {
        if (REFUND_STAGE == 1) {
            // require(now <= FIRST_REFUND_VOTE_TIME[REFUND_ROUND]);
            // voteContract.voteStart(FIRST_REFUND_VOTE_TIME[REFUND_ROUND], FIRST_REFUND_VOTE_TIME[REFUND_ROUND] + 7 days, MIN_VALID_VOTES, SafeMath.safeDiv(token.totalSupply(), 4000));
            voteContract.voteStart(now, now + 7 days, MIN_VALID_VOTES, SafeMath.safeDiv(token.totalSupply(), 4000));
        }
        if (REFUND_STAGE == 2) {
            // require(firstStageStatus && now <= SECOND_REFUND_VOTE_TIME[REFUND_ROUND]);
            // voteContract.voteStart(SECOND_REFUND_VOTE_TIME[REFUND_ROUND], SECOND_REFUND_VOTE_TIME[REFUND_ROUND] + 7 days, MIN_VALID_VOTES, SafeMath.safeDiv(token.totalSupply(), 4000));
            voteContract.voteStart(now, now + 7 days, MIN_VALID_VOTES, SafeMath.safeDiv(token.totalSupply(), 4000));
        }
    }
    
    function vote(bool _agree) public whenNotPaused whenValid {
        voteContract.vote(msg.sender, _agree, token.balanceOf(msg.sender));
    }
    
    function revokeVote() public whenNotPaused whenValid {
        voteContract.revokeVote(msg.sender);
    }
    
     modifier onlyTokenContract {
        require(msg.sender == address(token));
        _;
    }
    
    function whenTokenTransfer(address _from, address _to, uint _tokens) public onlyTokenContract {
        voteContract.whenTokenTransfer(_from, _to, _tokens);
    }
    
    function voteStatistics() public onlyOwner whenValid {
        bool voteResult = voteContract.voteStop();
        if (REFUND_STAGE == 1) {
            if (!voteResult) {
                if (REFUND_ROUND == 3) {
                    isValid = false;
                }
                else {
                    REFUND_ROUND = uint8(SafeMath.safeAdd(REFUND_ROUND, 1));
                }
            }
            else {
                firstStageStatus = true;
                REFUND_STAGE = 2;
            }
        }
        else if (REFUND_STAGE == 2) {
            if (!voteResult) {
                if (REFUND_ROUND == 3) {
                    isValid = false;
                }
                else {
                    REFUND_ROUND = uint8(SafeMath.safeAdd(REFUND_ROUND, 1));
                }
                REFUND_STAGE = 1;
            }
            else {
                isValid = false;
                fund.programStop();
            }
        }
        else {
            revert();
        }
    }
    
    function setRefundPrice(uint _price) public onlyOwner {
        require(_price > 0);
        REFUND_PRICE = _price;
    }
    
    function refund() public whenNotPaused {
        require(!isValid && REFUND_PRICE != 0);
        raise.sendFund(msg.sender, SafeMath.safeDiv(token.balanceOf(msg.sender), REFUND_PRICE));
    }
    
    function programSuccess() public onlyOwner whenValid {
        isValid = false;
    }
    
}