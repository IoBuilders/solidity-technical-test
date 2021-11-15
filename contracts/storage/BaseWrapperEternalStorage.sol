pragma solidity ^0.7.5;
// SPDX-License-Identifier: Apache2

import "iterable-eternal-storage/contracts/IIterableEternalStorage.sol";

abstract contract BaseWrapperEternalStorage {

    uint256 constant MAX_RESULTS_PER_PAGE = 200;

    IIterableEternalStorage public eternalStorage;

    modifier checkResultsPerPage(uint256 _resultsPerPage) {
        require(
            _resultsPerPage <= MAX_RESULTS_PER_PAGE,
            "Results per page should not be greater than 200"
        );
        _;
    }

    function _initEternalStorage (IIterableEternalStorage _storage) internal {
        eternalStorage = _storage;
    }

    function _buildKey(string memory _seed, address _value) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(_seed, _value));
    }

    function _buildKey(string memory _seed, string memory _value) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(_seed, _value));
    }

    function _buildKey(string memory _seed, uint256 _value) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(_seed, _value));
    }

    function _buildKey(string memory _seed, bool _value) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(_seed, _value));
    }

    function _buildKey(string memory _seed, bytes32 _value) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(_seed, _value));
    }

    function _buildKey(
        string memory _seed,
        bytes32 _value,
        uint256 _numericValue
    ) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(
            _seed,
            _value,
            _numericValue
        ));
    }

    function _buildKey(
        string memory _seed,
        uint256 _value,
        uint256 index
    )
    internal pure returns (bytes32 hash_)
    {
        hash_ = keccak256(abi.encodePacked(_seed, _value, index));
    }

    function _buildKey(
        string memory _seed,
        address _value,
        uint256 index
    )
    internal pure returns (bytes32 hash_)
    {
        hash_ = keccak256(abi.encodePacked(_seed, _value, index));
    }

    function _buildKey(
        string memory _seed,
        uint256 _value,
        string memory index
    )
    internal pure returns (bytes32 hash_)
    {
        hash_ = keccak256(abi.encodePacked(_seed, _value, index));
    }

    function _buildKey(
        string memory _seed,
        string memory _value,
        bytes32 _id
    )
    internal pure returns (bytes32 hash_)
    {
        hash_ = keccak256(abi.encodePacked(_seed, _value, _id));
    }

    function _buildKey(
        string memory _seed,
        string memory _value,
        uint256 _timestamp
    )
    internal pure returns (bytes32 hash_)
    {
        hash_ = keccak256(abi.encodePacked(_seed, _value, _timestamp));
    }

    function _buildKey(
        string memory _seed,
        string memory _value,
        address _id
    )
    internal pure returns (bytes32 hash_)
    {
        hash_ = keccak256(abi.encodePacked(_seed, _value, _id));
    }

    function _buildKey(
        string memory _seed,
        address _address,
        string memory _string
    ) internal pure returns (bytes32 hash_) {
        hash_ = keccak256(abi.encodePacked(_seed, _address, _string));
    }

    function _setAddress(bytes32 _key, address _value) internal {
        eternalStorage.setAddress(_key, _value);
    }

    function _getAddress(bytes32 _key) internal view returns (address) {
        return eternalStorage.getAddress(_key);
    }

    function _setUInt8(bytes32 _key, uint8 _value) internal {
        eternalStorage.setUInt8(_key, _value);
    }

    function _getUInt8(bytes32 _key) internal view returns (uint8) {
        return eternalStorage.getUInt8(_key);
    }

    function _setBytes32(bytes32 _key, bytes32 _value) internal {
        eternalStorage.setBytes32(_key, _value);
    }

    function _getBytes32(bytes32 _key) internal view returns (bytes32) {
        return eternalStorage.getBytes32(_key);
    }

    function _setString(bytes32 _key, string memory _value) internal {
        eternalStorage.setString(_key, _value);
    }

    function _getString(bytes32 _key) internal view returns (string memory) {
        return eternalStorage.getString(_key);
    }

    function _setUInt256(bytes32 _key, uint256 _value) internal {
        eternalStorage.setUInt256(_key, _value);
    }

    function _getUInt256(bytes32 _key) internal view returns (uint256) {
        return eternalStorage.getUInt256(_key);
    }

    function _setInt256(bytes32 _key, int256 _value) internal {
        eternalStorage.setInt256(_key, _value);
    }

    function _getInt256(bytes32 _key) internal view returns (int256) {
        return eternalStorage.getInt256(_key);
    }

    function _setBool(bytes32 _key, bool _value) internal {
        eternalStorage.setBool(_key, _value);
    }

    function _getBool(bytes32 _key) internal view returns (bool) {
        return eternalStorage.getBool(_key);
    }

    function _getRangeOfUInt256Keys(bytes32 _key, uint256 _pageNumber, uint256 _resultsPerPage)
    internal view checkResultsPerPage(_resultsPerPage)
    returns(uint256[] memory) {
        try eternalStorage.getRangeOfUInt256Keys(_key, _resultsPerPage * _pageNumber, _resultsPerPage)
            returns (uint256[] memory range) {
            return range;
        }
        catch {
            return new uint256[](0);
        }
    }

    function _getRangeOfBytes32Keys(bytes32 _key, uint256 _pageNumber, uint256 _resultsPerPage)
    internal view checkResultsPerPage(_resultsPerPage)
    returns(bytes32[] memory) {
        try eternalStorage.getRangeOfBytes32Keys(_key, _resultsPerPage * _pageNumber, _resultsPerPage)
        returns (bytes32[] memory range) {
            return range;
        }
        catch {
            return new bytes32[](0);
        }
    }

}