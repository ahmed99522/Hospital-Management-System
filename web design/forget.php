<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "web";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$email=  $_POST["email"];
$password = $_POST["pass"];
$confirm = $_POST["repassword"];

$sql = "UPDATE user SET password ='$password', confirm_password='$confirm' WHERE email ='$email'";

if ($conn->query($sql) === TRUE) {
  echo "Record updated successfully";
} else {
  echo "Error updating record: " . $conn->error;
}

$conn->close();
?>



