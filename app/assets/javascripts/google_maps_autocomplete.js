function onPlaceChanged() {
  const place = this.getPlace();
  const components = getAddressComponents(place);

  const artworkAddress = document.getElementById('artwork_address');
  artworkAddress.blur();
  artworkAddress.value = components.address;

  document.getElementById('artwork_zip_code').value = components.zip_code;
  document.getElementById('artwork_city').value = components.city;

  if (components.country_code) {
    const selector = '#artwork_country option[value="' + components.country_code + '"]';
    document.querySelector(selector).selected = true;
  }
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  if (window.console && typeof console.log === "function") {
    console.log(place);
  }

  const street_number = null;
  const route = null;
  const zip_code = null;
  const city = null;
  const country_code = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type === 'street_number') {
        street_number = component.long_name;
      } else if (type === 'route') {
        route = component.long_name;
      } else if (type === 'postal_code') {
        zip_code = component.long_name;
      } else if (type === 'locality') {
        city = component.long_name;
      } else if (type === 'postal_town' && city === null) {
        city = component.long_name;
      } else if (type === 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number === null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}

document.addEventListener("DOMContentLoaded", function() {
  var artworkAddress = document.getElementById('artwork_address');

  if (artworkAddress) {
    var autocomplete = new google.maps.places.Autocomplete(artworkAddress, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(artworkAddress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
