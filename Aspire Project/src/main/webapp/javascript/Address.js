/**
 * 
 */
var latitudeAndLongitude=document.getElementById("latitudeAndLongitude"),
location={
    latitude:'',
    longitude:''
};

if (navigator.geolocation){
  navigator.geolocation.getCurrentPosition(showPosition);
}
else{
  latitudeAndLongitude.innerHTML="Geolocation is not supported by this browser.";
}

function showPosition(position){ 
    location.latitude=position.coords.latitude;
    location.longitude=position.coords.longitude;
    latitudeAndLongitude.innerHTML="Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude; 
    var geocoder = new google.maps.Geocoder();
    var latLng = new google.maps.LatLng(location.latitude, location.longitude);

 if (geocoder) {
    geocoder.geocode({ 'latLng': latLng}, function (results, status) {
       if (status == google.maps.GeocoderStatus.OK) {
         console.log(results[0].formatted_address); 
         $('#address').html('Address:'+results[0].formatted_address);
       }
       else {
        $('#address').html('Geocoding failed: '+status);
        console.log("Geocoding failed: " + status);
       }
    }); //geocoder.geocode()
  }      
} 