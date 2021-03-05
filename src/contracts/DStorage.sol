pragma solidity >=0.5.0;

contract DStorage {
  string public name = 'DStorage';  //Name of the smart contract
  uint public fileCount = 0;
  mapping(uint => File) public files; //Mapping for the files

  struct File //struct of file data
  {
    uint fileId;
    string fileHash;
    uint fileSize;
    string fileType;
    string fileName;
    string fileDescription;
    uint uploadTime;
    address payable uploader;
  }

  constructor() public {
  }

  //For uploading a file to the blockchain
  function uploadFile(string memory _fileHash,
                      uint _fileSize,
                      string memory _fileType,
                      string memory _fileName,
                      string memory _fileDescription) public {
    
    fileCount++;
    files[1] = File(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, now, msg.sender);
    
  }

    // Make sure the file hash exists

    // Make sure file type exists

    // Make sure file description exists

    // Make sure file fileName exists

    // Make sure uploader address exists

    // Make sure file size is more than 0


    // Increment file id

    // Add File to the contract

    // Trigger an event

}