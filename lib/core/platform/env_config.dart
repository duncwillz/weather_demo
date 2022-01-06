import 'package:flutter/material.dart';
import 'package:weather_app/core/data/enums/type_enums.dart';

class EnvVar {
  EnvVar({
    @required this.API_KEY,
  });
  final String? API_KEY;
}

class EnvConfig {
  final Env? flavor;
  final EnvVar? values;
  static EnvConfig? _instance;

  factory EnvConfig({@required Env? flavor, @required EnvVar? values}) =>
      _instance ??= EnvConfig._internal(flavor, values);

  EnvConfig._internal(this.flavor, this.values);
  static EnvConfig get instance => _instance!;

  static bool isProduction() => _instance!.flavor == Env.PRODUCTION;
  static bool isStage() => _instance!.flavor == Env.STAGING;
  static bool get isStageEnv => String.fromEnvironment('ENV') == "STAGING";
}
