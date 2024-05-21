// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Test task`
  String get testTask {
    return Intl.message(
      'Test task',
      name: 'testTask',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Geolocation`
  String get geolocation {
    return Intl.message(
      'Geolocation',
      name: 'geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Tables`
  String get tables {
    return Intl.message(
      'Tables',
      name: 'tables',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for rating our app!`
  String get thanksForRatingOurApp {
    return Intl.message(
      'Thanks for rating our app!',
      name: 'thanksForRatingOurApp',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for sharing our app!`
  String get thanksForSharingOurApp {
    return Intl.message(
      'Thanks for sharing our app!',
      name: 'thanksForSharingOurApp',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for contacting us!`
  String get thanksForContactingUs {
    return Intl.message(
      'Thanks for contacting us!',
      name: 'thanksForContactingUs',
      desc: '',
      args: [],
    );
  }

  /// `Rate App`
  String get rateApp {
    return Intl.message(
      'Rate App',
      name: 'rateApp',
      desc: '',
      args: [],
    );
  }

  /// `Share App`
  String get shareApp {
    return Intl.message(
      'Share App',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Country: {country}`
  String country(Object country) {
    return Intl.message(
      'Country: $country',
      name: 'country',
      desc: '',
      args: [country],
    );
  }

  /// `Region: {regionName}`
  String regionName(Object regionName) {
    return Intl.message(
      'Region: $regionName',
      name: 'regionName',
      desc: '',
      args: [regionName],
    );
  }

  /// `City: {city}`
  String city(Object city) {
    return Intl.message(
      'City: $city',
      name: 'city',
      desc: '',
      args: [city],
    );
  }

  /// `Latitude: {lat}`
  String lat(Object lat) {
    return Intl.message(
      'Latitude: $lat',
      name: 'lat',
      desc: '',
      args: [lat],
    );
  }

  /// `Longitude: {lon}`
  String lon(Object lon) {
    return Intl.message(
      'Longitude: $lon',
      name: 'lon',
      desc: '',
      args: [lon],
    );
  }

  /// `Timezone: {timezone}`
  String timezone(Object timezone) {
    return Intl.message(
      'Timezone: $timezone',
      name: 'timezone',
      desc: '',
      args: [timezone],
    );
  }

  /// `Failed to load location`
  String get failedToLoadLocation {
    return Intl.message(
      'Failed to load location',
      name: 'failedToLoadLocation',
      desc: '',
      args: [],
    );
  }

  /// `Reload`
  String get reload {
    return Intl.message(
      'Reload',
      name: 'reload',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
