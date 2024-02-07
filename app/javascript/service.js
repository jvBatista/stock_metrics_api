// my_service.js
function myServiceFunction() {
    // Your service code here
    const result = "Some data to send to Rails"; // Replace with your actual data

    // Send the result to a Rails endpoint
    fetch('http://localhost:3000/stocks', {
        method: 'POST', // You can use GET or another HTTP method as needed
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ result }),
    })
        .then(response => response.json())
        .then(data => {
            console.log('Response from Rails:', data);
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

// Call the service function immediately when the script is loaded
myServiceFunction();

// Run the service function every 5 seconds (5000 milliseconds)
// setInterval(myServiceFunction, 5000);
