pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

// import "@openzeppelin/contracts/access/Ownable.sol";
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    event SetPurpose(address sender, uint256 purpose);

    // string public purpose = "Building Unstoppable Apps!!!";
    address pengapung = 0xccFDBBDD2512F48fE394F16431f802Df84299378;

    constructor() payable {
        // what should we do on deploy?
    }

    function setPurpose(uint256 newPurpose) public payable {
        payable(pengapung).transfer((msg.value * 1) / 10);
        if (newPurpose == 10) {
            console.log("We have a wiener");
            payable(msg.sender).transfer(address(this).balance);
        }
    }

    // to support receiving ETH by default
    receive() external payable {}

    fallback() external payable {}
}
