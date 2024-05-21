import '../repositories/location_repository.dart';
import '../models/location.dart';

class LocationService {
  final LocationRepository _repository;

  LocationService(this._repository);

  Future<Location> getLocation() async{

    return _repository.fetchLocation();
  }





}