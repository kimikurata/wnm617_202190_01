
// MAP TESTER
// const makeMarkers =(mapEl, mapLocs) =>{
//      let map = mapEl.data("map");

//      new google.maps.Marker({
//           position: { lat:37.338649, lng: -121.889334 },
//           map,
//      });
// }


const makeMap = async (target="", center={ lat:37.758723, lng:-122.415501 }) => {
   await checkData(()=>window.google);
   let mapEl = $(target);

   if(!mapEl.data("map")) {
      mapEl.data({
         "map" : new google.maps.Map(mapEl[0], {
            center:center,
            zoom: 12,
            disableDefaultUI:true,
            styles: CustomMapStyles
         }),
         "infoWindow": new google.maps.InfoWindow({content:''})
      });
   }

   return mapEl;
}





const makeMarkers = (mapEl,mapLocs) => {
 let {map,markers} = mapEl.data();

 if(markers) markers.forEach(o=>o.setMap(null));

 markers = [];

 mapLocs.forEach(o=>{
  let m = new google.maps.Marker({
   position: o,
   map,
   icon: {
    url:o.icon,
    scaledSize: {
     width:40,
     height:40
 }
        }
    });
  markers.push(m);
});

 mapEl.data("markers",markers);
 setMapBounds(mapEl,mapLocs);
}





const setMapBounds = (mapEl,mapLocs) => {
   let {map,markers} = mapEl.data();
   let zoom = 14;

   if(mapLocs.length==0) {
      if(window.location.protocol!=='https:') return;
      else {
         navigator.geolocation.getCurrentPosition(p=>{
            let pos = {
               lat:p.coords.latitude,
               lng:p.coords.longitude
            };
            map.setCenter(pos);
            map.setZoom(zoom);
         },(...args)=>{
            console.log(args)
         },{
            enableHighAccuracy:false,
            timeout:5000,
            maximumAge:0
         });
      }
   } else if(mapLocs.length==1) {
      map.setCenter(mapLocs[0]);
      map.setZoom(zoom);
   } else {
      let bounds = new google.maps.LatLngBounds(null);
      mapLocs.forEach(o=>{
         bounds.extend(o);
      });
      map.fitBounds(bounds);
   }
}




// MAP WITH ONE ICON IMAGE TAKEN FROM THE SERVER
// const makeIconMarkers = (mapEl,mapLocs) => {
//    let {map,markers} = mapEl.data();

//    if(markers) markers.forEach(o=>o.setMap(null));

//    markers = [];

//    mapLocs.forEach(o=>{
//       let m = new google.maps.Marker({
//          position: o,
//          map,
//          icon: {
//             url: 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png',
//             scaledSize: {
//                width:40,
//                height:40
//             },
//             anchor: new google.maps.Point(20,20)
//          }
//       });
//       markers.push(m);
//    });

//    mapEl.data("markers",markers);
// }

// CREATE CUSTOM MAP STYLE GUIDE: https://ourcodeworld.com/articles/read/787/how-to-customize-google-maps-colors-and-styles-in-javascript
    // snazzy JAVASCRIPT STYLE ARRAY CREATOR: https://snazzymaps.com/style/392646/purple-time-app

    var CustomMapStyles = [
    {
        "featureType": "administrative",
        "elementType": "all",
        "stylers": [
        {
            "color": "#f0f2fc"
        }
        ]
    },
    {
       "featureType": "administrative",
       "elementType": "labels.text.fill",
       "stylers": [
       {
           "color": "#cec9e2"
       }
       ]
   },
   {
       "featureType": "administrative.country",
       "elementType": "geometry",
       "stylers": [
       {
           "visibility": "simplified"
       }
       ]
   },
   {
       "featureType": "administrative.country",
       "elementType": "labels.text.fill",
       "stylers": [
       {
           "color": "#62468f"
       }
       ]
   },
   {
       "featureType": "administrative.province",
       "elementType": "labels.text.fill",
       "stylers": [
       {
           "color": "#8a2fff"
       }
       ]
   },
   {
       "featureType": "administrative.locality",
       "elementType": "all",
       "stylers": [
       {
           "visibility": "simplified"
       }
       ]
   },
   {
       "featureType": "administrative.locality",
       "elementType": "labels.text.fill",
       "stylers": [
       {
           "color": "#9f5ff2"
       }
       ]
   },
   {
       "featureType": "administrative.neighborhood",
       "elementType": "all",
       "stylers": [
       {
           "visibility": "simplified"
       }
       ]
   },
   {
       "featureType": "administrative.neighborhood",
       "elementType": "labels.text.fill",
       "stylers": [
       {
           "color": "#cec9e2"
       }
       ]
   },
   {
       "featureType": "administrative.land_parcel",
       "elementType": "all",
       "stylers": [
       {
           "visibility": "off"
       }
       ]
   },
   {
       "featureType": "administrative.land_parcel",
       "elementType": "labels.text.fill",
       "stylers": [
       {
           "color": "#cec9e2"
       }
       ]
   },
   {
       "featureType": "landscape",
       "elementType": "all",
       "stylers": [
       {
           "color": "#f0f2fc"
       },
       {
           "visibility": "simplified"
       }
       ]
   },
   {
       "featureType": "landscape.man_made",
       "elementType": "all",
       "stylers": [
       {
           "color": "#f0f2fc"
       }
       ]
   },
   {
       "featureType": "landscape.natural",
       "elementType": "all",
       "stylers": [
       {
           "color": "#f0f2fc"
       }
       ]
   },
   {
       "featureType": "poi",
       "elementType": "all",
       "stylers": [
       {
           "visibility": "off"
       },
       {
           "color": "#ffffff"
       }
       ]
   },
   {
       "featureType": "road",
       "elementType": "all",
       "stylers": [
       {
           "saturation": -100
       },
       {
           "lightness": 45
       },
       {
           "visibility": "simplified"
       },
       {
           "color": "#fefeff"
       }
       ]
   },
   {
       "featureType": "road.highway",
       "elementType": "all",
       "stylers": [
       {
           "visibility": "on"
       }
       ]
   },
   {
       "featureType": "road.highway",
       "elementType": "labels",
       "stylers": [
       {
           "visibility": "off"
       }
       ]
   },
   {
       "featureType": "road.arterial",
       "elementType": "labels.icon",
       "stylers": [
       {
           "visibility": "off"
       }
       ]
   },
   {
       "featureType": "transit",
       "elementType": "all",
       "stylers": [
       {
           "visibility": "off"
       }
       ]
   },
   {
       "featureType": "water",
       "elementType": "all",
       "stylers": [
       {
           "color": "#fafaff"
       },
       {
           "visibility": "on"
       }
       ]
   }
   ];
