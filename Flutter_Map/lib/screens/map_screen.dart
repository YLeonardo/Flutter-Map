import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  static String routeName = 'map_screen';

  const MapScreen({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final center = LatLng(19.432608, -99.133209);
  final double minZoom = 5.0;
  final double maxZoom = 19.0;

  MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zócalo'),
      ),
      body: FlutterMap(
        mapController: mapController, // Asigna el MapController
        options: MapOptions(
          center: center,
          zoom: 17.0,
          minZoom: minZoom,
          maxZoom: maxZoom,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(19.432999, -99.133209),
                builder: (context) => const Icon(
                  Icons.location_on,
                  size: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              mapController.move(
                  mapController.center, mapController.zoom - 1.0);
            },
            child: const Icon(Icons.zoom_out),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              mapController.move(
                  mapController.center, mapController.zoom + 1.0);
            },
            child: const Icon(Icons.zoom_in),
          ),
        ],
      ),
    );
  }
}
