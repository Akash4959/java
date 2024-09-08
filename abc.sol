// SPDX-License-Identifier: MIT
pragma solidity ^0.5.11;

contract LedgerComparison {

    // Enum to represent the ledger type
    enum LedgerType { Public, Private }

    // Struct to represent the attributes of a ledger
    struct LedgerAttributes {
        string access;
        string networkActors;
        bool usesNativeToken;
        string security;
        string speed;
        string example;
    }

    // Mapping to store the attributes for each ledger type
    mapping(LedgerType => LedgerAttributes) public ledgerAttributes;

    // Constructor to initialize the attributes for Public and Private Ledgers
    constructor() {
        ledgerAttributes[LedgerType.Public] = LedgerAttributes({
            access: "Permissionless",
            networkActors: "Decentralized",
            usesNativeToken: true,
            security: "High (Consensus: PoW/PoS)",
            speed: "Slower",
            example: "Bitcoin, Ethereum"
        });

        ledgerAttributes[LedgerType.Private] = LedgerAttributes({
            access: "Permissioned",
            networkActors: "Centralized or Semi-Decentralized",
            usesNativeToken: false,
            security: "High (Access control)",
            speed: "Faster",
            example: "Hyperledger Fabric, Quorum"
        });
    }

    // Function to get ledger attributes based on the type
    function getLedgerAttributes(LedgerType _ledgerType) public view returns (LedgerAttributes memory) {
        return ledgerAttributes[_ledgerType];
    }
}
