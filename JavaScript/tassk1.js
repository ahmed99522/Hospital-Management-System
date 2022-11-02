var loclat,
    loclong;
navigator.geolocation.getCurrentPosition(function initMap(pos) {
  const uluru = { lat: pos.coords.latitude, lng: pos.coords.longitude };
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 20,
    center: uluru,
  });
  const marker = new google.maps.Marker({
    position: uluru,
    map: map,
  });
}
);


