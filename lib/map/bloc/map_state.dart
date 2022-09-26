part of 'map_bloc.dart';

class MapState extends Equatable {
  const MapState({
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;

  @override
  List<Object> get props => [
        latitude,
        longitude,
      ];

  MapState copyWith({
    double? latitude,
    double? longitude,
  }) {
    return MapState(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
