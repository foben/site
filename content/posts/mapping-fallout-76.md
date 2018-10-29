---
markup: md
layout: minimal
prerelease: true
date: "2018-10-28"
title: Mapping Fallout 76
categories:
- gaming
---
<!--title-->
Mapping Fallout 76
<!--scripts and styling-->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js"></script>
<script src='https://api.mapbox.com/mapbox.js/plugins/leaflet-fullscreen/v1.0.1/Leaflet.fullscreen.min.js'></script>
<link href='https://api.mapbox.com/mapbox.js/plugins/leaflet-fullscreen/v1.0.1/leaflet.fullscreen.css' rel='stylesheet' />
<style>
#content, #content .tile {
    background-color: #214673;
    color: white;
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
#content p:first-child {
    margin: .25em auto;
    padding: 0!important;
    line-height: 1.2em;
    max-width: 12em;
    font-size: 2em; 
    color: #f1e93c;
    text-align: center;
    font-family: Roboto;
    font-weight: bold;
    color: #fff7f4;
    background-color: #61010e;
    border: 2px solid black;
    text-transform: uppercase;
}
#content p {
  margin: 0 auto;
  max-width: 1089px;
}
</style>
<!--the map-->
<div class="full-page-width" style="padding: 0;">
    <div id="map" style="margin: 0 auto;"></div>
</div>
<p class="title" style="font-weight: bold; text-align: center; color: white; margin-top: .25em; border-bottom: 2px solid white;">My Journey Through West Virginia.</p>

<p>1. Vault 76 - The jouney starts here.</p>

<!--the map script-->
<script>
var map = L.map('map', {
    crs: L.CRS.Simple,
    attributionControl: false,
    fullscreenControl: true,
    minZoom: -2,
});
var bounds = [[0,0], [4356, 4356]];
var image = L.imageOverlay('/images/fo76-map-optimized.jpg', bounds).addTo(map);
map.fitBounds(bounds);
map.setMaxBounds(bounds);

map.setView([4356, 4356/2], -2.125);

var yx = L.latLng;
var xy = function(x, y) {
    if (L.Util.isArray(x)) {    // When doing xy([x, y]);
        return yx(x[1], x[0]);
    }
    return yx(y, x);  // When doing xy(x, y);
}

var vault76 = xy(1396, 2889.0);

L.marker(vault76).addTo(map).bindPopup('1. Vault 76 - The jouney starts here.');
</script>
