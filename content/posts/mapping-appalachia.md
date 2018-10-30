---
markup: md
#layout: minimal
prerelease: true
date: "2018-10-29"
title: Mapping Appalachia
subtitle: Fallout 76 Live Map
categories:
- <span class="emoji" style="background-image:url(/images/slackmoji/pipboy.png)" title=":pipboy:">:pipboy:</span>
- <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f3ae.png)" title=":video_game:">:video_game:</span>
- <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f5fa.png)" title=":map:">:map:</span>
head: |
  <!--scripts and styling-->
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css" />
  <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js"></script>
  <script src='https://api.mapbox.com/mapbox.js/plugins/leaflet-fullscreen/v1.0.1/Leaflet.fullscreen.min.js'></script>
  <link href='https://api.mapbox.com/mapbox.js/plugins/leaflet-fullscreen/v1.0.1/leaflet.fullscreen.css' rel='stylesheet' />
  <style>
  #map {
    font-size: 1em;
    width: calc(100vw - 4px);
    height: calc(100vw - 4px);
    max-width: 50em;
    max-height: 50em;
    background-color: #0e0e0e;
    border: 2px solid #f1e93c;
    margin: 0;
    padding: 0;
  }
  #content p.page-title {
    margin: .25em auto;
    padding: .15em!important;
    padding-left: .5em!important;
    padding-right: .5em!important;
    line-height: 1.2em;
    font-size: 2em;
    color: #f1e93c;
    text-align: center;
    font-family: Roboto;
    font-weight: bold;
    color: white;
    background-color: #8e0011;
    border: 2px solid black;
    font-size: 1.6em;
    margin-bottom: 0.1em;
    margin-top: 0;
    /*text-transform: uppercase;*/
  }
  #content p.page-title .black {
    color: rgba(255,255,255,.91);
  }
  </style>
---
<!--title-->
<!--Mapping Fallout 76-->
<!--the map-->
<div class="full-page-width" style="padding: 0;">
    <div id="map" style="margin: 0 auto;"></div>
</div>

<p class="title" style="font-weight: bold; margin-top: .25em;">October 30th <a href="https://bethesda.net/en/article/XUtJrgiCgU6WqMASW8w0I/fallout-76-our-future-begins-together-in-beta">B.E.T.A.</a>  (Break-It Early Test Application)</p>
<hr>

1. [**Vault 76**](http://fallout.wikia.com/wiki/Vault_76) - The journey starts here.

...



<p class="title">Acknowledgements</p>
<hr>

- Interactive map built with [Leaflet](https://leafletjs.com) and [Leaflet.fullscreen](https://github.com/Leaflet/Leaflet.fullscreen).

- Map image adapted from [here](https://www.reddit.com/r/fo76/comments/9mgzfu/4k_composite_map_from_ign_gameplay_4356px_x_4356px/) with thanks to [u/ReadsSmallTextWrong](https://www.reddit.com/user/ReadsSmallTextWrong). Original artwork copyright [Bethesda Softworks LLC](https://bethesda.net).

<!--the map script-->
<script>
// helper to treat xy coords as map latlng objects
var yx = L.latLng;
var xy = function(x, y) {
    if (L.Util.isArray(x)) {    // When doing xy([x, y]);
        return yx(x[1], x[0]);
    }
    return yx(y, x);  // When doing xy(x, y);
}

// create the map
var map = L.map('map', {
    crs: L.CRS.Simple,
    attributionControl: false,
    fullscreenControl: true,
    zoomDelta: 1,
    zoomSnap: 1,
});

// add the map image with bounds = image dimensions
// our map will be a square 4356 x 4356 px
var mapSize = 4356;
var bounds = [[0,0], [mapSize, mapSize]];
var image = L.imageOverlay('/images/fo76-map-optimized.jpg', bounds).addTo(map);
map.setMaxBounds(bounds);

// helper that computes minimum zoom level to show the entire map
function dimsToMinZoom() {
  var size = map.getSize();
  var minSize = Math.min(size.x, size.y);
  return -1 * Math.sqrt(mapSize / minSize);
}

// fix the zoom level
function fixZoom() {
  map.setMinZoom(dimsToMinZoom());
}
fixZoom();
map.options.zoomSnap = 0.00001;
// zoom all the way out, and bias towards the top
map.panTo(xy(mapSize/2, mapSize), {"animate": false});
map.setZoom(map.getMinZoom(), {"animate": false});
map.options.zoomSnap = 1;
map.on("resize", function(event) {
  fixZoom();
})

// first location!
var vault76 = xy(1396, 2889.0);
// add a marker
L.marker(vault76).addTo(map).bindPopup('1. <span class="bold">Vault 76</span> - The journey starts here.');
</script>
