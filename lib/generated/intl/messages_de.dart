// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(city) => "Stadt: ${city}";

  static String m1(country) => "Land: ${country}";

  static String m2(lat) => "Breite: ${lat}";

  static String m3(lon) => "Längengrad: ${lon}";

  static String m4(regionName) => "Region: ${regionName}";

  static String m5(timezone) => "Zeitzone: ${timezone}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "city": m0,
        "contactUs": MessageLookupByLibrary.simpleMessage("Kontaktiere uns"),
        "country": m1,
        "failedToLoadLocation": MessageLookupByLibrary.simpleMessage(
            "Standort konnte nicht geladen werden"),
        "geolocation": MessageLookupByLibrary.simpleMessage("Geolokalisierung"),
        "home": MessageLookupByLibrary.simpleMessage("Heim"),
        "lat": m2,
        "lon": m3,
        "rateApp": MessageLookupByLibrary.simpleMessage("Bewertungs App"),
        "regionName": m4,
        "reload": MessageLookupByLibrary.simpleMessage("Neu laden"),
        "shareApp": MessageLookupByLibrary.simpleMessage("App teilen"),
        "tables": MessageLookupByLibrary.simpleMessage("Tische"),
        "testTask": MessageLookupByLibrary.simpleMessage("Testaufgabe"),
        "thanksForContactingUs": MessageLookupByLibrary.simpleMessage(
            "Danke, dass sie uns kontaktiert haben!"),
        "thanksForRatingOurApp": MessageLookupByLibrary.simpleMessage(
            "Vielen Dank für die Bewertung unserer App!"),
        "thanksForSharingOurApp": MessageLookupByLibrary.simpleMessage(
            "Vielen Dank, dass Sie unsere App geteilt haben!"),
        "timezone": m5
      };
}
