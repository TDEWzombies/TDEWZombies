var map;
var marker = null;


function initializegooglemaps(map_canvas,initializeTextSearch,initializeSelectLatLng,initialLatitude,initialLongitude,initialzoon) {
	mapOptions = {
		center: new google.maps.LatLng(initialLatitude, initialLongitude),
	  	zoom: initialzoon,
	  	mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	var map = new google.maps.Map(document.getElementById(map_canvas), mapOptions);

	if (initialzoon != 1)
	{
		marker = new google.maps.Marker({
		 	position: map.getCenter(),
		 	map: map
		});
	}
	
	if (initializeTextSearch)
	{
		var input = document.getElementById('searchTextField');
		var autocomplete = new google.maps.places.Autocomplete(input);
		autocomplete.setTypes([]);

		autocomplete.bindTo('bounds', map);

		google.maps.event.addListener(autocomplete, 'place_changed', function() {
		 	var place = autocomplete.getPlace();
			if (place.geometry.viewport) {
				map.fitBounds(place.geometry.viewport); }
			else {
			    map.setCenter(place.geometry.location);
			    map.setZoom(17); }

	  		var address = '';
	  		if (place.address_components) {
	    		address = [
	      		(place.address_components[0] && place.address_components[0].short_name || ''),
	      		(place.address_components[1] && place.address_components[1].short_name || ''),
	      		(place.address_components[2] && place.address_components[2].short_name || '')
	    		].join(' ');
	  		}
		});
	}

	if (initializeSelectLatLng)
	{
		google.maps.event.addListener(map, 'click', function(event) {

			if (marker != null)
    			marker.setMap(null);

	  		marker = new google.maps.Marker({
			 	position: event.latLng,
			 	map: map
			});

			map.setCenter(event.latLng);

			document.getElementById("map_latitude").value = event.latLng.lat();
			document.getElementById("map_longitude").value = event.latLng.lng();
		});
	}
}

function getURLMap(lat,lng,dsc)
{
	window.open("https://maps.google.com/?q=" + encodeURIComponent(dsc + "@") +  lat + lng);
}