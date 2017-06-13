pragma solidity ^0.4.11;

/// @title Stores a 64-bit value on the Ethereum blockchain with a timestamp.
contract BlockStore {
    struct BlockValue {
        uint64 hash_value;
        uint256 timestamp;
        address creator;
    }
    
    // Hash value of node
    BlockValue public record;
    
    function BlockStore(uint64 hash_value) {
        record.hash_value = hash_value;
        record.timestamp = block.timestamp;
        record.creator = msg.sender;
    }
    
    // Getters
    function getValue() returns(uint64) {
        return record.hash_value;
    }
    
    function getTimestamp() returns(uint256) {
        return record.timestamp;
    }
    
    function getCreator() returns(address) {
        return record.creator;
    }
}
