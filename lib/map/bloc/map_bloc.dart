import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'map_event.dart';
part 'map_state.dart';

const _initialLat = 51.507359;
const _initialLong = -0.136439;

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc()
      : super(
          const MapState(
            latitude: _initialLat,
            longitude: _initialLong,
          ),
        ) {
    on<ShowLocation>(_onShowLocation);
  }

  void _onShowLocation(
    ShowLocation event,
    Emitter<MapState> emit,
  ) {
    emit(
      state.copyWith(
        latitude: event.latitude,
        longitude: event.longitude,
      ),
    );
  }
}
