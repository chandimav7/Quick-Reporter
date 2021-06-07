<?php

include_once "config.php";

$myArr = array();


$sql = "SELECT * FROM `accidentcase` WHERE `status`='NOT_SLOVED'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $caseId=$row["caseId"];
        $timeStamp=$row["timeStamp"];
        $type=$row["type"];
        $vehicleType=$row["vehicleType"];
        $vehicleNumber=$row["vehicleNumber"];
        $user=$row["user"];
        $lang=$row["lang"];
        $lat=$row["lat"];
        $status=$row["status"];
        $flag=$row["flag"];
        $approvel=$row["approvel"];



        echo "
        <tr>
        <td>$caseId</td>
        <td>$timeStamp</td>
        <td>$vehicleNumber</td>
        <td>$status</td>
        <td>$approvel</td>
        <td><a href='../API/deleteCase.php?caseId=$caseId'>Delete</a></td>
      </tr>";

}
} 
$conn->close();


?>