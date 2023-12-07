// ignore_for_file: depend_on_referenced_packages

import 'package:clean_architecture/product/init/application_initialize.dart';
import 'package:clean_architecture/product/init/product_localization.dart';
import 'package:clean_architecture/product/init/state_initialize.dart';
import 'package:clean_architecture/product/init/theme/custom_dark_theme.dart';
import 'package:clean_architecture/product/init/theme/custom_light_theme.dart';
import 'package:clean_architecture/product/navigation/app_router.dart';
import 'package:clean_architecture/product/state/view_model/product_view_model.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(
    DevicePreview(
      builder: (context) => ProductLocalization(
        child: const StateInitialize(child: _MyApp()),
      ),
    ),
  );
}

final class _MyApp extends StatelessWidget {
  const _MyApp();
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: context.watch<ProductViewModel>().state.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
