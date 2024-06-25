import 'package:geolocator/geolocator.dart';


class Location {

  double latitude = 0;
  double longitude = 0;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;

    } catch (e) {
      print(e);
      print('exception happened');
    }
  }

}