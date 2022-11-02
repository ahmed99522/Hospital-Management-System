<?php
$servername ="localhost";
$username ="root";
$password ="";
$db ="web";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO addpatient VALUES ('".$_POST['EPN']."','".$_POST['EPC']."', '".$_POST['EPE']."' , '".$_POST['EPA']."' , '".$_POST['EPAGE']."' ,'".$_POST['EPMH']."','".$_POST['PN']."')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
        
        
}
 else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>