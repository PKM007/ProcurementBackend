<?php
include "db.php"; 
if($_GET['action'] == "login"){

    $email = $_GET['email'];
    $password = $_GET['password'];

$q = mysqli_query($con, "SELECT `type` from `login`  where `email`='$email' AND `password`='$password'");


$type=array();
while ($row=mysqli_fetch_object($q)){
  $type[]=$row;
  break; 
}

echo json_encode($type); 

}

echo mysqli_error($con);
?>