pragma solidity ^0.4.23;import './SafeMath.sol';
contract Vote {
    struct singleVote {
        uint voteTime;
        bool agree; 
        uint weight; 
    }        
    struct totalVotes {
        uint startTime;
        uint endTime;
        uint agreeCount;
        uint disagreeCount;
        uint minValidWeight;
        uint maxSingleWeight;
        bool inVoting;
        mapping(address => singleVote) voteByAddress;
    }        
    mapping(address => totalVotes) public totalVotesByAddress; 
    
    function voteStart(uint _startTime, uint _endTime, uint _minWeight, uint _maxSingleWeight) public {
        require(_endTime > _startTime && !totalVotesByAddress[msg.sender].inVoting && now <= _startTime);
        totalVotesByAddress[msg.sender].startTime = _startTime;
        totalVotesByAddress[msg.sender].endTime = _endTime;
        totalVotesByAddress[msg.sender].inVoting = true;
        totalVotesByAddress[msg.sender].minValidWeight = _minWeight;
        totalVotesByAddress[msg.sender].maxSingleWeight = _maxSingleWeight;
    }  
    
    function vote(address _voteAddress, bool _agree, uint _weight) public {
        require(totalVotesByAddress[msg.sender].inVoting);
        require(now >= totalVotesByAddress[msg.sender].startTime && now <= totalVotesByAddress[msg.sender].endTime);
        require(totalVotesByAddress[msg.sender].voteByAddress[_voteAddress].voteTime < totalVotesByAddress[msg.sender].startTime);
        if (_weight > totalVotesByAddress[msg.sender].maxSingleWeight) {
            _weight = totalVotesByAddress[msg.sender].maxSingleWeight;
        }
        if(_agree) {
            totalVotesByAddress[msg.sender].agreeCount = SafeMath.safeAdd(totalVotesByAddress[msg.sender].agreeCount, _weight); 
        }
        else {
            totalVotesByAddress[msg.sender].disagreeCount = SafeMath.safeAdd(totalVotesByAddress[msg.sender].disagreeCount , _weight); 
        }        
        totalVotesByAddress[msg.sender].voteByAddress[_voteAddress] = singleVote({voteTime: now, agree: _agree, weight: _weight});
    }        
    
    function revokeVote(address _voteAddress) public {
        require(totalVotesByAddress[msg.sender].inVoting);
        require(now >= totalVotesByAddress[msg.sender].startTime && now <= totalVotesByAddress[msg.sender].endTime);
        require(totalVotesByAddress[msg.sender].voteByAddress[_voteAddress].voteTime >= totalVotesByAddress[msg.sender].startTime
        && totalVotesByAddress[msg.sender].voteByAddress[_voteAddress].voteTime  <= totalVotesByAddress[msg.sender].endTime);
        if (totalVotesByAddress[msg.sender].voteByAddress[_voteAddress].agree) {
            totalVotesByAddress[msg.sender].agreeCount = SafeMath.safeSub(totalVotesByAddress[msg.sender].agreeCount,
            totalVotesByAddress[msg.sender].voteByAddress[_voteAddress].weight);
        } 
        else {
            totalVotesByAddress[msg.sender].disagreeCount = SafeMath.safeSub(totalVotesByAddress[msg.sender].disagreeCount,
            totalVotesByAddress[msg.sender].voteByAddress[_voteAddress].weight);
        }
        delete totalVotesByAddress[msg.sender].voteByAddress[_voteAddress];
    }
    
    function voteStop() public returns(bool) {
        require(totalVotesByAddress[msg.sender].inVoting);
        // require(now > totalVotesByAddress[msg.sender].endTime && totalVotesByAddress[msg.sender].inVoting);
        bool result;
        if (SafeMath.safeAdd(totalVotesByAddress[msg.sender].agreeCount, totalVotesByAddress[msg.sender].disagreeCount) 
            < totalVotesByAddress[msg.sender].minValidWeight) {
            result = false;
        }        
        else {
            if (totalVotesByAddress[msg.sender].agreeCount < totalVotesByAddress[msg.sender].disagreeCount) {                
                result = false;
            }            
            else {
                result = true;
            }        
        }
        delete totalVotesByAddress[msg.sender];
        return result;
    }        
    
    function whenTokenTransfer(address _from, address _to, uint _tokens) public {
        if (totalVotesByAddress[msg.sender].inVoting) {
            singleVote memory from = totalVotesByAddress[msg.sender].voteByAddress[_from]; 
            singleVote memory to = totalVotesByAddress[msg.sender].voteByAddress[_to];
            uint _weight = _tokens;
            if (_weight > totalVotesByAddress[msg.sender].maxSingleWeight) {
                _weight = totalVotesByAddress[msg.sender].maxSingleWeight;
            }
            if (from.voteTime > totalVotesByAddress[msg.sender].startTime && from.voteTime < totalVotesByAddress[msg.sender].endTime) {
                totalVotesByAddress[msg.sender].voteByAddress[_from].weight = SafeMath.safeSub(from.weight, _weight);
                if (from.agree) {
                    totalVotesByAddress[msg.sender].agreeCount = SafeMath.safeSub(totalVotesByAddress[msg.sender].agreeCount, _weight); 
                } 
                else {
                    totalVotesByAddress[msg.sender].disagreeCount = SafeMath.safeSub(totalVotesByAddress[msg.sender].disagreeCount, _weight);
                } 
            }
            if (to.voteTime > totalVotesByAddress[msg.sender].startTime && to.voteTime < totalVotesByAddress[msg.sender].endTime) { 
                totalVotesByAddress[msg.sender].voteByAddress[_to].weight = SafeMath.safeAdd(to.weight, _weight); 
                if (to.agree) {
                    totalVotesByAddress[msg.sender].agreeCount = SafeMath.safeAdd(totalVotesByAddress[msg.sender].agreeCount, _weight);
                } 
                else {
                    totalVotesByAddress[msg.sender].disagreeCount = SafeMath.safeAdd(totalVotesByAddress[msg.sender].disagreeCount, _weight); 
                }
            }        
        }    
    }
}
            
            
            
            
            
            