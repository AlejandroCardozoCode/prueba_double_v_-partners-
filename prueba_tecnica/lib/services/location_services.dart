import 'package:geocoding/geocoding.dart';

class LocationServices {
  LocationServices();
  // servicio que permite encontrar una ubicación usando la Liberia de geocoding
  Future<List<Location?>> getLocationsByText(String address) async {
    try {
      List<Location> locations = await locationFromAddress(address, localeIdentifier: "es_CO");

      if (locations.isNotEmpty) {
        return locations;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  // servicio que permite encontrar una dirección usando la Liberia de geocoding
  Future<String> getAddressByLatLong(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);

      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        String direccion = '${placemark.street}, ${placemark.locality}, ${placemark.country}';
        return direccion;
      } else {
        return 'No se encontró la dirección';
      }
    } catch (e) {
      return 'Error al buscar la dirección: $e';
    }
  }
}
