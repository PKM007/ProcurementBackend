<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
$folderPath = "upload/";
$file_names = $_FILES["file"]["name"];
$message = array();
for ($i = 0; $i < count($file_names); $i++) {
    $file_name=$file_names[$i];
    $tmp = explode('.', $file_name);
    $extension = end($tmp);
    $original_file_name = pathinfo($file_name, PATHINFO_FILENAME);
    $file_url = $original_file_name . "." . $extension;
    $message[$i] = $file_name;
    move_uploaded_file($_FILES["file"]["tmp_name"][$i], $folderPath . $file_url);
}

echo json_encode($message); 
?>