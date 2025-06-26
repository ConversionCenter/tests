// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IConversionCenterEndUser {
    struct DecentralizedPassport {
        string nameP;
        string nameC;
        string Sirname;
        bytes32 country;
        bytes32 decentralizedID;
    }
 
    function createProfileConvertAndVoteForDemocracy(
        string memory nameP,
        string memory nameC,
        string memory Sirname,
        bytes32 decentralizedID,
        bool ifIRAN,
        string inputCountry,
        uint256 indexOfAnswer) external payable;
    function declarations(string, uint256) external view returns (uint256);
    function viewCitizen(uint256 index) external view returns (DecentralizedPassport memory);

    function spuff() external view returns (uint256);
    function indexStatement() external view returns (uint256);
    function statements(uint256) external view returns (string memory);

    function howManyVoted(string) external view returns (uint256);
    function citizens(uint256) external view returns (
        string memory nameP,
        string memory nameC,
        string memory Sirname,
        bytes32 country,
        bytes32 decentralizedID
    );
    function citizensAdr(address) external view returns (uint256);
    function citizenAdresFromIndex(uint256) external view returns (address);
    function indexCitizens() external view returns (uint256);
    function decentralizedIDAdres(address) external view returns (bytes32);
    function adresOfdecentralizedID(bytes32) external view returns (address);
    function view11Rules() external view returns (string memory);




}
