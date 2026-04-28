// 1: Arguments
contract Contract {

    uint public x;

    constructor(uint _x) {
        x = _x;
    }

}

// 2: Increment

contract Contract {

    uint public x;

    constructor(uint _x) {
        x = _x;
    }
    function increment() external {
        x += 1;
    }

}

// 3: View Addition
contract Contract {

    uint public x;

    constructor(uint _x) {
        x = _x;
    }
    function increment() external {
        x += 1;
    }

    function add(uint _value) external view returns (uint) {
        return x + _value;
    }

}

// 4: Console Log
import "forge-std/console.sol";

contract Contract {
    function winningNumber(string calldata secretMessage) external returns(uint) {
        console.log(secretMessage);
        return 794;
    }
}

// 5: Pure Double
contract Contract {
    function double(uint _value) external pure returns (uint) {
        return _value * 2;
    }
}