import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final String country;
  final String regionName;
  final String city;
  final double lat;
  final double lon;
  final String timezone;

  Location({
    required this.country,
    required this.regionName,
    required this.city,
    required this.lat,
    required this.lon,
    required this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}