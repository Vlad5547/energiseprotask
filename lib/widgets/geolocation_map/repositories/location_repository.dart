import 'package:dio/dio.dart';
import '../models/location.dart';

class LocationRepository {
  final Dio _dio = Dio();

  Future<Location> fetchLocation() async {
    final response = await _dio.get('http://ip-api.com/json');
    if (response.statusCode == 200) {
      return Location.fromJson(response.data);
    } else {
      throw Exception('Failed to load location');
    }
  }
}