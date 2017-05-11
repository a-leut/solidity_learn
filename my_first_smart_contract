pragma solidity ^0.4.10;

contract MySecretStore {
    address storeOwner;
    uint256 storeValue;
    bool set;
    
    function MySecretStore() {
        storeOwner = msg.sender;
        set = true;
    }

    function setValue(uint256 val) {
        if (msg.sender == storeOwner) {
            storeValue = val;
        }
    }

    function get() returns (uint256) {
        if ( msg.sender == storeOwner) {
            return storeValue;
        }
    }
}
