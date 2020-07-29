<!DOCTYPE html>
<html>
<body>

<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "db_crudionic";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM master_user";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br> id: ". $row["user_id"]. " - Name: ". $row["username"]. " " . $row["gender"] . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>