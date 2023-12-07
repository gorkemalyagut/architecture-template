import 'package:clean_architecture/product/init/theme/custom_color_scheme.dart';
import 'package:clean_architecture/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom light theme for project design
final class CustomLightTheme implements CustomTheme {
  @override
  // TODO: change to initialize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );
  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();
}
