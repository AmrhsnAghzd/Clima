import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  var latitude;
  var longitude;
  bool statePermission;
  CurrentLocation({this.statePermission = true, this.latitude, this.longitude});

  Future<void> determinePosition() async {
    bool serviceEnabled;

    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      statePermission = false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {}
    }

    try {
      Position position = await Geolocator.getCurrentPosition();
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      latitude = null;
      longitude = null;
    }
  }
}





















  // Future<void> getCurrentLocation() async {
  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.low);
  //     latitude = position.latitude;
  //     longitude = position.longitude;
  //   } catch (e) {
  //     print('amir');    
  //     latitude = null;
  //     longitude = null;
  //   }
  // }