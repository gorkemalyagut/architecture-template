import 'package:clean_architecture/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable

///Product localization manager
final class ProductLocalization extends EasyLocalization {
  /// 'ProductLocalization' need to [child] for a wrap locale item
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedItems,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  /// The code is defining a static final list called `supportedLocales` which contains the `Locale`
  /// objects associated with the 'tr' and 'en' values of the `Locales` enum. This list represents the
  /// supported locales in the application.
  static final List<Locale> _supportedItems = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _translationPath = 'assets/translations';

  ///Change app language by using [Locales]
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}
