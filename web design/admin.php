<?php
// Configuration
$servername = "localhost";
$username="root";
$password="";
$db = "web";

// Connect To DB
$con = mysqli_connect($servername , $username, $password, $db);  

// Check For connection Errors
if(mysqli_connect_errno()) {  
    die("Failed to connect with MySQL: ". mysqli_connect_error());  
}  
// If usname found in database
if(isset($_POST['login'])){

        // Get username and password
        $usname = $_POST['usname'];  
        $paswd = $_POST['paswd'];  
      
        // SELECT Query
        $sql = "SELECT * FROM adminlog WHERE usname = '$usname' and paswd = '$paswd'";  
        // store Query
        $result = mysqli_query($con, $sql);  
        // get rows from DB and store them into Array
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        // Count DB Rows
        $count = mysqli_num_rows($result);  
        // if found 
        if($count == 1)
        {  
            // Redirect to html page
            header('location: Admin dashboard.html'); 
            exit(); 
        }  
        else
        {  
            // if not found 
            echo "<h1> Login failed. Invalid username or password.</h1>";  
        } 

    }
?>