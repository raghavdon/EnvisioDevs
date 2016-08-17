function shp(chosen) 
    {
 var x=document.getElementById('dim'); 
	
	if(chosen=='cube'){
		x.innerHTML="Side: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dima' onkeypress='return isNumberKey2(event)' required/>";  
	}
	else if(chosen=='sphere'){
		x.innerHTML="Radius: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dima' onkeypress='return isNumberKey2(event)' required />";  
	}
	else if(chosen=='cylinder'){
		x.innerHTML="Radius: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dima' onkeypress='return isNumberKey2(event)' required />" +
				" <br> Height: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dimb' onkeypress='return isNumberKey2(event)' required />";  
	}
	else if(chosen=='cuboid'){
		x.innerHTML="Length: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dima' onkeypress='return isNumberKey2(event)' required/>" +
				" <br>  Width: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dimb' onkeypress='return isNumberKey2(event)'  required />" +
				"  <br> Height: <input style='HEIGHT: 25px; WIDTH: 50px' size='36' name='dimc' onkeypress='return isNumberKey2(event)' required />";  
	}
	 
	
}


function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

function isNumberKey2(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode != 46 &&(charCode < 48 || charCode > 57)))
        return false;
    return true;
}


function loadMap(name) {
	var la=name.split("~");
	
  var latlng = new google.maps.LatLng(la[2], la[1]);
  var myOptions = {
    center: latlng,
    zoom: 14,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
  
  var marker = new google.maps.Marker({
    position: latlng,
    map: map,
    
    title:la[0]
  });
  
  
}
