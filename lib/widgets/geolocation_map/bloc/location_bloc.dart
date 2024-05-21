import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/location.dart';
import '../services/location_service.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationService _locationService;

  LocationBloc(this._locationService) : super(LocationInitial()) {
    on<LocationRequested>(_onLocationRequested);
  }

  void _onLocationRequested(LocationRequested event, Emitter<LocationState> emit) async {
    print('Location requested event received');
    emit(LocationLoadInProgress());
    try {
      final location = await _locationService.getLocation();
      print('Location loaded successfully: $location');
      emit(LocationLoadSuccess(location));
    } catch (e) {
      print('Failed to load location: $e');
      emit(LocationLoadFailure());
    }
  }
}

