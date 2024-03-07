
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Degen is ERC20, Ownable {

    enum RewardItems {  
        MACHINEGUN, 
        SHOTGUN, 
        HEALTH,
        BOMD
    }

    constructor() ERC20("Degen", "DWN") Ownable(msg.sender) {}


    function calculateDecimals() private view returns(uint){
        return 10 ** decimals();
    }

    function mintDegenToken(uint256 amount) public onlyOwner {
        _mint(msg.sender, (amount * calculateDecimals()));
    }

    function mintDegenToken(address[] memory players, uint256 amount) public onlyOwner {
        for (uint i = 0; i < players.length; i++) {
            _mint(players[i], (amount * calculateDecimals()));
        }
    }

    function transferDegenToken(address _to, uint256 _amount) external returns(bool){

        require((_amount * calculateDecimals()) <= balanceOf(msg.sender), "Insufficient Degen Token");

        bool isSent = transfer(_to, (_amount * calculateDecimals()));

        return isSent;
    }

    function burnDegenToken(uint256 _amount) external {
        require((_amount * calculateDecimals()) <= balanceOf(msg.sender), "Insufficient Degen Token");
        
        _burn(msg.sender, (_amount * calculateDecimals()));
    }

    function getDegenTokenToken() public view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function gainRewardItems(RewardItems item) external {
        uint256 price = getPrice(item);
        require(price <= balanceOf(msg.sender), "Insufficient Degen Token");

        _transfer(msg.sender, address(this), price);
    }

    function getPrice(RewardItems item) private view returns (uint256) {
        if (item == RewardItems.MACHINEGUN) {
            return 10 * calculateDecimals();
        } else if (item == RewardItems.SHOTGUN) {
            return 8 * calculateDecimals();
        } else if (item == RewardItems.HEALTH) {
            return 6 * calculateDecimals();
        } else if (item == RewardItems.BOMD) {
            return 15 * calculateDecimals();
        } else {
            return 0;
        }
    }

    function withdrawFunds()external onlyOwner{
        _transfer(address(this), msg.sender, balanceOf(address(this)));
    }

}
//["0x3fb7B6793bF753E74bf776ff386256a7FD9F7bee", "0x64eC750043715134D07d6e39E6593D2F33FF2579"]


   

// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2