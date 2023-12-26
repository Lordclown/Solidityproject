// contractaddress: 0x9D36c869633fbdb23cfAc47953A508a9b5dD6712

// To increase the counter, transact with the function 'incrementCounter' 
// or send a transaction to the contractaddress with the following data: '0x5b34b966'
// To call the current value of the counter call the function 'getCounter'

// Solidity version specifier
pragma solidity ^0.8.0;

// Contract declaration
contract CounterContract {
    // Private state variable to store the counter value
    uint256 private counter;

    // Event declaration to log counter updates
    event CounterUpdated(uint256 newCounterValue);

    // Constructor: initializes the counter with an initial value of 0
    constructor() {
        counter = 0;
    }

    // Getter function to retrieve the current counter value (view function)
    function getCounter() external view returns (uint256) {
        return counter;
    }

    // Function to increment the counter and emit the CounterUpdated event
    function incrementCounter() external {
        counter++;  // Increment the counter value by 1
        emit CounterUpdated(counter);  // Emit an event with the updated counter value
    }
}
