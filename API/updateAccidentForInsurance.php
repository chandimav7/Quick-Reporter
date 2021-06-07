<?php
session_start();
$caseID=$_POST["caseID"];
$approvel=$_POST["approvel"];



//$user=$_SESSION["id"] ;


include "config.php";
$sql = "UPDATE `accidentcase` SET `approvel`= '$approvel'  WHERE `accidentcase`.`caseId` = $caseID;";
echo $sql;
if ($conn->query($sql) === TRUE) {
   
    echo "New record created successfully.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

header("Location:../insurencePanel"); 
exit;

 
?>