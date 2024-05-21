// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(city) => "City: ${city}";

  static String m1(country) => "Country: ${country}";

  static String m2(lat) => "Latitude: ${lat}";

  static String m3(lon) => "Longitude: ${lon}";

  static String m4(regionName) => "Region: ${regionName}";

  static String m5(timezone) => "Timezone: ${timezone}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "city": m0,
        "contactUs": MessageLookupByLibrary.simpleMessage("Contact Us"),
        "country": m1,
        "failedToLoadLocation":
            MessageLookupByLibrary.simpleMessage("Failed to load location"),
        "geolocation": MessageLookupByLibrary.simpleMessage("Geolocation"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "lat": m2,
        "lon": m3,
        "rateApp": MessageLookupByLibrary.simpleMessage("Rate App"),
        "regionName": m4,
        "reload": MessageLookupByLibrary.simpleMessage("Reload"),
        "shareApp": MessageLookupByLibrary.simpleMessage("Share App"),
        "tables": MessageLookupByLibrary.simpleMessage("Tables"),
        "testTask": MessageLookupByLibrary.simpleMessage("Test task"),
        "thanksForContactingUs":
            MessageLookupByLibrary.simpleMessage("Thanks for contacting us!"),
        "thanksForRatingOurApp":
            MessageLookupByLibrary.simpleMessage("Thanks for rating our app!"),
        "thanksForSharingOurApp":
            MessageLookupByLibrary.simpleMessage("Thanks for sharing our app!"),
        "timezone": m5
      };
}
