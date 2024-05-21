// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      country: json['country'] as String,
      regionName: json['regionName'] as String,
      city: json['city'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      timezone: json['timezone'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'country': instance.country,
      'regionName': instance.regionName,
      'city': instance.city,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
    };
