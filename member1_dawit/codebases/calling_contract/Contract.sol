// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;



// 1: Call Function
interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
        IHero(hero).alert();
    }
}

// 2: Signature
contract Sidekick {
    function sendAlert(address hero) external {
        // function selector of "alert()"
        bytes4 signature = bytes4(keccak256("alert()"));

        (bool success, ) = hero.call(abi.encodePacked(signature));

        require(success);
    }
}

// 3: With Signature
