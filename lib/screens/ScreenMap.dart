import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScreenMap extends StatefulWidget {
  ScreenMap({super.key});

  State<ScreenMap> createState() {
    return _ScreenMapState();
  }
}

class _ScreenMapState extends State<ScreenMap> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.7749, -122.4194);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
    );
  }
}
