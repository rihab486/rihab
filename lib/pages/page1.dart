import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Pageone extends StatefulWidget {
  Pageone({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Pageone> {
  Set<Marker> _markers = HashSet<Marker>();
  Set<Polygon> _polygons = HashSet<Polygon>();
  Set<Polyline> _polylines = HashSet<Polyline>();
  Set<Circle> _circles = HashSet<Circle>();
  bool _showMapStyle = false;
  GoogleMapController _mapController;
  BitmapDescriptor _markerIcon;
  @override
  void initState() {
    super.initState();
    _setPolygons();
    _setPolylines();
    _setCircles();

    super.initState();
  }

  void _toggleMapStyle() async {
    String style = await DefaultAssetBundle.of(context).loadString('');
    if (_showMapStyle) {
      _mapController.setMapStyle(style);
    } else {
      _mapController.setMapStyle(null);
    }
  }

  void _setPolygons() {
    List<LatLng> polygonLatLongs = List<LatLng>();
    polygonLatLongs.add(LatLng(33.8439408, 9.400138));
    polygonLatLongs.add(LatLng(33.8439408, 9.400138));
    polygonLatLongs.add(LatLng(33.8439408, 9.400138));
    polygonLatLongs.add(LatLng(33.8439408, 9.400138));
    _polygons.add(
      Polygon(
        polygonId: PolygonId("0"),
        points: polygonLatLongs,
        fillColor: Colors.white,
        strokeWidth: 1,
      ),
    );
  }

  void _setPolylines() {
    List<LatLng> polylineLatLongs = List<LatLng>();
    polylineLatLongs.add(LatLng(33.8439408, 9.400138));
    polylineLatLongs.add(LatLng(33.8439408, 9.400138));
    polylineLatLongs.add(LatLng(33.8439408, 9.400138));
    polylineLatLongs.add(LatLng(33.8439408, 9.400138));
    _polylines.add(
      //MARKER
      Polyline(
        polylineId: PolylineId("0"),
        points: polylineLatLongs,
        color: Colors.purple,
        width: 5,
      ),
    );
  }

  void _setCircles() {
    // CERCLE
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(33.8439408, 9.400138),
          radius: 1000,
          strokeWidth: 3,
          fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId("Tunis"),
            position: LatLng(36.800108, 10.184794),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Nabeul"),
            position: LatLng(36.451, 10.73530859),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Sfax"),
            position: LatLng(34.7397986, 10.7600021),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Mahdia"),
            position: LatLng(35.5036952, 11.0682135),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Monastir"),
            position: LatLng(35.7707813, 10.8280884),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Médenine"),
            position: LatLng(33.3434395, 10.4910529),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Kairouan"),
            position: LatLng(35.6710101, 10.10062),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Kasserine"),
            position: LatLng(35.1687646, 8.8365654),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Gafsa"),
            position: LatLng(34.4224374, 8.7843862),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Tozeur"),
            position: LatLng(33.9203523, 8.13707219),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Gabès"),
            position: LatLng(33.8878082, 10.10044),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Kebili"),
            position: LatLng(33.7061148, 8.9698376),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Tataouine"),
            position: LatLng(32.9315727, 10.450413),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Bizerte"),
            position: LatLng(37.2720905, 9.8708565),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Le Kef"),
            position: LatLng(36.1784491, 8.707347),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Manouba"),
            position: LatLng(36.8113307, 10.0947037),
            infoWindow: InfoWindow(
              title: "San Francsico",
              snippet: "An Interesting city",
            ),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Ben Arous"),
            position: LatLng(36.7554709, 10.2202183),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Ariana"),
            position: LatLng(36.8587351, 10.188232),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Siliana"),
            position: LatLng(36.0846651, 9.3743733),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Zaghouan"),
            position: LatLng(36.3995482, 10.1446938),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Sidi Bouzid"),
            position: LatLng(35.0382386, 9.4865301),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Béja"),
            position: LatLng(36.7236241, 9.1853919),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Jendouba"),
            position: LatLng(36.4969228, 8.7763566),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
      _markers.add(
        Marker(
            markerId: MarkerId("Sousse"),
            position: LatLng(35.828829, 10.640525),
            infoWindow: InfoWindow(),
            icon: _markerIcon),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(33.8439408, 9.400138),
              zoom: 6.2,
            ),
            markers: _markers,
            polygons: _polygons,
            polylines: _polylines,
            circles: _circles,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.map),
        onPressed: () {
          setState(() {
            _showMapStyle = !_showMapStyle;
          });
          _toggleMapStyle();
        },
      ),
    );
  }
}
