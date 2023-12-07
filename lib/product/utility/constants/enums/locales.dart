import 'package:flutter/material.dart';

/// The code defines an enum called `Locales` with two values: `tr` and `en`. Each value is associated
/// with a `Locale` object.
enum Locales {
  ///This creates a `Locale` object with a language code of `'tr'` and a country code of `'TR'`.
  tr(Locale('tr', 'TR')),

  /// The line `en(Locale('en', 'US'));` is creating a `Locale` object with a language code of `'en'` and a country code of `'US'`.
  en(Locale('en', 'US'));

  /// value of the `Locales` enum.
  final Locale locale;

  /// The line `const Locales(this.locale);` is defining a constructor for the `Locales` enum.
  const Locales(this.locale);
}
