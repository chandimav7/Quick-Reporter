<?php
session_start();
$caseId=$_REQUEST["caseId"];



$user=$_SESSION["id"] ;


include "config.php";
$sql = "DELETE FROM `accidentcase` WHERE `accidentcase`.`caseId` = $caseId";

if ($conn->query($sql) === TRUE) {
    $caseID = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: " . $caseID;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


header("Location:../home/history.php"); 
exit;

 
?>