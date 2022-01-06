import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/di/di_config.dart';
import 'package:weather_app/core/presentation/state/provider_initializer.dart';
import 'package:weather_app/core/utils/data/string_constants.dart';

import 'core/data/enums/type_enums.dart';
import 'core/platform/env_config.dart';
import 'feature/search_weather/presentation/pages/search_view.dart';

void main() async {
  EnvConfig(
      flavor: Env.PRODUCTION,
      values: EnvVar(
        API_KEY: API_KEY,
      ));

  initInjectors();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInitializer.providers,
      child: MaterialApp(
        title: 'Test App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SearchView(),
      ),
    );
  }
}
