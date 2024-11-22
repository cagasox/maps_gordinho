import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsFlutter extends StatefulWidget {
  const GoogleMapsFlutter({super.key});

  @override
  State<GoogleMapsFlutter> createState() => _GoogleMapsFlutterState();
}

class _GoogleMapsFlutterState extends State<GoogleMapsFlutter> {
  LatLng myCurrentLocation = const LatLng(-22.913474429846517, -47.068936291520366  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: myCurrentLocation,
          zoom: 14, // Você pode ajustar o nível de zoom
        ),
        onMapCreated: (GoogleMapController controller) {
          // Aqui você pode adicionar lógica após o mapa ser criado, se necessário
        },
        markers: {
          Marker(
            markerId: MarkerId('current_location'),
            position: myCurrentLocation,
            infoWindow: InfoWindow(title: 'Minha Localização'),
          ),
        },
      ),
    );
  }
}
