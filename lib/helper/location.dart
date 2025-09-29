// import 'dart:io';

// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

// class GetGeolocator {
//   Future<Position?> getCurrentLocation() async {
//     bool? serviceEnabled;
//     LocationPermission permission;
    
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       await Geolocator.openLocationSettings();
//       return null;
//     }
    
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return null;
//       }
//     }
    
//     LocationSettings locationSettings = const LocationSettings(
//       accuracy: LocationAccuracy.high,
//       distanceFilter: 10,
//     );
    
//     Position position = await Geolocator.getCurrentPosition(
//       locationSettings: locationSettings,
//     );
    
//     if (position.isMocked) {
//       exit(1);
//     }
//     return position;
//   }
  
//   Future<Placemark> getAddressLatLang(Position position) async {
//     List<Placemark> placemarks =
//         await placemarkFromCoordinates(position.latitude, position.longitude);
//     Placemark place = placemarks[0];
//     return place;
//   }
// }