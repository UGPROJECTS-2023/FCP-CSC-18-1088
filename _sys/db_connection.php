<?php
// Database connection parameters
$host = "localhost";
$username = "root";
$password = ""; // Empty password
$database = "zayba";

// Create a database connection
$db_connection = mysqli_connect($host, $username, $password, $database);

// Check if connection was successful
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
} else {
    // echo "Successfully connected to the database!";
}
?>
