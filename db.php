<?php
  header('Access-Control-Allow-Origin: *');
  header("Access-Control-Allow-Credentials: true");
  header("Access-Control-Allow-Methods: POST, PUT, GET, DELETE, UPDATE, OPTIONS");
  header("Access-Control-Allow-Headers: Content-Type, Origin, Authorization, X-Requested-With");
  header("Content-Type: application/json; charset=utf-8");
  

$con = mysqli_connect("localhost", "root", "root", "requisition"); 


?>