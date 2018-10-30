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
  #content, #content .tile {
    padding-top: 0;
  }
  .tile {
    max-width: 1090px;
    padding-top: 0!important;
  }
  #map {
    width: calc(100vw - 4px);
    height: calc(100vw - 4px);
    max-width: 1089px;
    max-height: 1089px;
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
    /*max-width: 12em;*/
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
    /*text-transform: uppercase;*/
  }
  #content p.page-title .black {
    color: rgba(255,255,255,.91);
  }
  #content p {
    max-width: 1089px;
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


----


Credits:

- Interactive map built with [Leaflet](https://leafletjs.com) and [Leaflet.fullscreen](https://github.com/Leaflet/Leaflet.fullscreen).

- Map image adapted from [here](https://www.reddit.com/r/fo76/comments/9mgzfu/4k_composite_map_from_ign_gameplay_4356px_x_4356px/) with thanks to [u/ReadsSmallTextWrong](https://www.reddit.com/user/ReadsSmallTextWrong). Original artwork copyright [Bethesda Softworks LLC](https://bethesda.net).

<!--the map script-->
<script>
var map = L.map('map', {
    crs: L.CRS.Simple,
    attributionControl: false,
    fullscreenControl: true,
    minZoom: -2.125,
});
var bounds = [[0,0], [4356, 4356]];
var image = L.imageOverlay('/images/fo76-map-optimized.jpg', bounds).addTo(map);
map.fitBounds(bounds);
map.setMaxBounds(bounds);

var yx = L.latLng;
var xy = function(x, y) {
    if (L.Util.isArray(x)) {    // When doing xy([x, y]);
        return yx(x[1], x[0]);
    }
    return yx(y, x);  // When doing xy(x, y);
}

var vault76 = xy(1396, 2889.0);

L.marker(vault76).addTo(map).bindPopup('1. Vault 76 - The jouney starts here.');

map.setView(vault76, -2.125);
</script>
