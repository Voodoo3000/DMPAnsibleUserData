<?php
$servername = "dmp-db-mysql-rds-instance.c0y5rr1q3upt.us-east-1.rds.amazonaws.com";
$username = "root";
$password = "rootPassword";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "MySQL connection to the $servername RDS instance is established";
?>