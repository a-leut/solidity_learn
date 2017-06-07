pragma solidity ^0.4.11;

/// @title Store a hash value on the block
contract BlockStore {
    struct BlockValue {
        uint64 hash_value;
        uint256 timestamp;
        address creator;
    }
    
    BlockValue public record;
    
    function BlockStore(uint64 hash_value) {
        record.hash_value = hash_value;
        record.timestamp = block.timestamp;
        record.creator = msg.sender;
    }
}
