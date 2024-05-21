import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class LocationMap extends StatelessWidget {
  final double lat;
  final double lon;

  LocationMap({required this.lat, required this.lon});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(
            lat, lon),
        initialZoom: 9.2
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          maxZoom: 19,
        ),
        CurrentLocationLayer(),
      ],

    );
  }
}
