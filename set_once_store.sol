pragma solidity ^0.4.10;

contract SetOnceStore {
    // A secret store where the secret can only be set once by the owner
    address storeOwner;
    uint256 storeValue;
    bool set;
    
    function SetOnceStore() {
        storeOwner = msg.sender;
        set = false;
    }

    function setValue(uint256 val) {
        if (!set && msg.sender == storeOwner) {
            storeValue = val;
            set = true;
        }
    }

    function get() returns (uint256) {
        if (set && msg.sender == storeOwner) {
            return storeValue;
        }
    }
}
