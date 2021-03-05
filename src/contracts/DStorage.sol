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

  event FileUploaded( //Event to be emitted when a file is uploaded
    uint fileId,
    string fileHash,
    uint fileSize,
    string fileType,
    string fileName,
    string fileDescription,
    uint uploadTime,
    address payable uploader
  );

  constructor() public {
  }

  //For uploading a file to the blockchain
  function uploadFile(string memory _fileHash,
                      uint _fileSize,
                      string memory _fileType,
                      string memory _fileName,
                      string memory _fileDescription) public {
    
    require(bytes(_fileHash).length > 0); //File Hash should exist
    require(_fileSize > 0);  //File Size should be greater than 0
    require(bytes(_fileType).length > 0); //File Type should exist
    require(bytes(_fileName).length > 0); //File Name is given
    require(bytes(_fileDescription).length > 0); //File Description is given
    require(msg.sender != address(0));  //File Uploader address exists

    //Actual File Uploading
    fileCount++;
    files[fileCount] = File(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, block.timestamp, msg.sender);
    
    emit FileUploaded(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, block.timestamp, msg.sender);
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