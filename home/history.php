<?php
 include "../commenComponent/header.php";

 ?>

<div class="container-fluid bg-3 text-center">    

<div class="w3-container">

<br/>
  <table class="w3-table-all">
    <thead>
      <tr class="w3-red">
        <th>Case Id</th>
        <th>TimeStamp</th>
        <th>Vehicle Number</th>
        <th>Status</th>
        <th>Approvel</th>
        <th></th>

    </tr>
    </thead>
    <?php
 include "../API/driverAccidentTable.php";

 ?>
    
    
  </table>
</div>
  
</div><br>

<br><br>

<?php
 include "../commenComponent/footer.php";

 ?>
