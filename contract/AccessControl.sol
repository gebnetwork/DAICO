pragma solidity ^0.4.23;

contract Owner {
    //合约拥有者
    address public owner;
    
    //构造函数，将合约的所有权给予发布者
    constructor() public {
        owner = msg.sender;
    }
    
    //仅有合约的拥有者可以操作
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    //onlyOwner作为函数执行的前置条件
    //仅有合约拥有者可以更换所属权
    function newOwner(address to) public onlyOwner {
        if(to != address(0)) {
            owner = to;
        }
    }
}

contract AccessControl is Owner {

    bool public paused = false;

    modifier whenNotPaused() {
        require(!paused);
        _;
    }

    modifier whenPaused {
        require(paused);
        _;
    }

    function pause() external  onlyOwner whenNotPaused {
        paused = true;
    }

    function unpause() public onlyOwner whenPaused {
        paused = false;
    }
}