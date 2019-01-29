<?php
 
 $hostname = "localhost";
 $username = "root";
 $password = "";
 $database = "scs";
 $conn = new mysqli($hostname, $username, $password, $database);
 
 if ($conn->connect_errno) {
 
     echo "Failed to connect to MySQL: " . $conn->connect_error;
 
 }
 error_reporting(0);
 ?>
 