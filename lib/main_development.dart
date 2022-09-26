import 'package:flutter_maps/app/app.dart';
import 'package:flutter_maps/bootstrap.dart';
import 'package:location_api_client/location_api_client.dart';
import 'package:locations_repository/locations_repository.dart';

void main() {
  final locationApiClient = LocationApiClient();
  final locationsRepository = LocationsRepository(
    locationApiClient: locationApiClient,
  );

  bootstrap(
    () => App(
      locationsRepository: locationsRepository,
    ),
  );
}
