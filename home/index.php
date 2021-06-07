<?php
 include "../commenComponent/header.php";

 ?>

 




<div class="container-fluid bg-3 text-center">    

  <div class="row">
    <div class="col-sm-6">
    <div id="googleMap" style="width:100%;height:700px;"></div>

    <p id="map"></p>
   

    </div>
    <div class="col-sm-6 w3-dark-grey" style="height:700px;"> 

    <div class="w3-container w3-dark-grey" >
    <h2>Report New Accident</h2><a href="history.php"><button class="btn btn-danger btn-sm" style="float:right;width:15%;margin:0;">History</button><a>
  </div>
  <form class="w3-container" action="../API/saveAccident.php" method="POST" enctype="multipart/form-data">
    <p>     <br><br> 
    <label class="w3-text-black"><b>District: </b></label>
    <select class="w3-input w3-border w3-sand" name ="type" style="width:50%;display: initial;">
  <option value="AMPARA">AMPARA</option>
  <option value="ANURADHAPURA">ANURADHAPURA</option>
  <option value="BADULLA">BADULLA</option>
  <option value="BATTICALOA">BATTICALOA</option>
  <option value="COLOMBO">COLOMBO</option>
  <option value="GALLE">GALLE</option>
  <option value="GAMPAHA">GAMPAHA</option>
  <option value="HAMBANTHOTA">HAMBANTHOTA</option>
  <option value="JAFFNA">JAFFNA</option>
  <option value="KALUTHARA">KALUTHARA</option>
  <option value="KANDY">KANDY</option>
  <option value="KEGALLE">KEGALLE</option>
  <option value="KILINOCHCHI">KILINOCHCHI</option>
  <option value="KURUNEGALA">KURUNEGALA</option>
  <option value="MANNARAM">MANNARAM</option>
  <option value="MATHALE">MATHALE</option>
  <option value="MATHARA">MATHARA</option>
  <option value="MULATHIVU">MULATHIVU</option>
  <option value="NUWARA ELIYA">NUWARA ELIYA</option>
  <option value="POLONNARUWA">POLONNARUWA</option>
  <option value="PUTHTHALAM">PUTHTHALAM</option>
  <option value="RATHNAPURA">RATHNAPURA</option>
  <option value="TRINCOMALEE">TRINCOMALEE</option>
  <option value="VAVUNIYA">VAVUNIYA</option>
 

</select>

    <p> 

    <label class="w3-text-black"><b>Vehicle Type: </b></label>
    <select class="w3-input w3-border w3-sand" name ="vehicleType" style="width:50%;display: initial;">
  <option value="CAR">Car</option>
  <option value="BIKE">Bike</option>
  <option value="VAN">Van</option>
  <option value="BUS">Bus</option>
</select>
    <p> 

    <label class="w3-text-black"><b>Vehicle Number: </b></label>
    <input class="w3-input w3-border w3-round-large" name="vehicleNumber" type="text" style="width:50%;display: initial;"></p>
    <p>

    <input class="w3-input w3-border w3-sand" name="lang" id="lang" type="hidden"></p>
    <input class="w3-input w3-border w3-sand" name="lat" id="lat" type="hidden"></p>


    <!-- <label class="w3-text-red"><b>Flag</b></label>
   
    <select class="w3-input w3-border w3-sand" name ="flag">
  <option value="HIGH">HIGH</option>
  <option value="MEDIUM">MEDIUM</option>
  <option value="LOW">LOW</option>

</select> -->
<br><br>
<label class="w3-text-black"><b>Attachment: </b></label>
    <input class="w3-input " name="file1" type="file" style="width:50%;float:right;"></p><br>
    <input class="w3-input" name="file2" type="file" style="width:50%;float:right;"></p><br>
    <input class="w3-input " name="file3" type="file" style="width:50%;float:right;"></p><br>
    <input class="w3-input " name="file4" type="file" style="width:50%;float:right;"></p><br>
    <input class="w3-input " name="file5" type="file" style="width:50%;float:right;"></p>

    <p>

    
<br/>

    <p><br><br>
    <button class="btn btn-success" style="width:15%">Report</button></p>
  </form>

    </div>
    
  </div>
</div><br>

<br><br>


<script>
getLocation();
var x = document.getElementById("map");
var center ;
var loc ;

function getLocation() {

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
   center = {lat: position.coords.latitude, lng:position.coords.longitude};
loc = {lat: position.coords.latitude, lng:position.coords.longitude};
document.getElementById("lat").value = position.coords.latitude;
document.getElementById("lang").value = position.coords.longitude;
}
alert("Getting Your Current location");
function myMap() { 
var mapProp= {
  center:new google.maps.LatLng(center),
  zoom:7,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
    position: loc,
    map: map,
    title: 'Hello World!'
  });
marker.setMap(map);
}
google.maps.event.addListener(map, 'click', function(event) {
  placeMarker(map, event.latLng);
});

function placeMarker(map, location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
  var infowindow = new google.maps.InfoWindow({
    content: 'Latitude: ' + location.lat() +
    '<br>Longitude: ' + location.lng()
  });
  infowindow.open(map,marker);
}

</script>



<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCLLFhjGtokLTy7xIaGAzRzOhaLyyN3350&callback=myMap"></script>

</script>








<?php
 include "../commenComponent/footer.php";

 ?>
