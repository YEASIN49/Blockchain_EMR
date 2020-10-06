pragma solidity ^0.5.0;

// code for testing purpose starts below
//
//contract AdvancedStorage {
//  uint[] public ids;

//  function add(uint id) public {
//    ids.push(id);
//  }

//  function get(uint i) view public returns(uint) {
//    return ids[i];
//  }
  
//  function getAll() view public returns(uint[] memory) {
//    return ids;
//  }

//  function length() view public returns(uint) {
//    return ids.length;
//  }
//}


// code for testing purpose ends here
// below are the intregated combined code
//
contract AdvancedStorage {

struct UserInfo {
        uint id;
        bool hasAccess;
        string record;
    }
    mapping (string => UserInfo) AllUsers;

    function SetUserInfo(string memory blockID, uint _id ,string memory _record , bool access ) public {
        AllUsers[blockID].id = _id;
        AllUsers[blockID].hasAccess = access;
        AllUsers[blockID].record = _record;
        AllUsers[blockID].hasAccess = access;
        
        
}
   function GetUserInfo(string memory blockID ) public view returns (uint,bool,string memory) {
       if(AllUsers[blockID].hasAccess == true){
            return (AllUsers[blockID].id,AllUsers[blockID].hasAccess,AllUsers[blockID].record);
       }
       else{
            return (AllUsers[blockID].id,AllUsers[blockID].hasAccess,'Need Permission to Access');
       }
       
    }   
}