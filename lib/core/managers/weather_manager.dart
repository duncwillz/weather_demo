import 'package:weather/weather.dart';
import 'package:weather_app/core/data/network/network_exceptions.dart';
import 'package:weather_app/core/platform/env_config.dart';

class WeatherApiManager {
  static final WeatherApiManager instance = WeatherApiManager._internal();
  factory WeatherApiManager() => instance;

  WeatherFactory? weatherFactory;
  WeatherApiManager._internal() {
    weatherFactory = WeatherFactory(EnvConfig.instance.values!.API_KEY!);
  }

  Future<Weather> getWeather({String? city}) async {
    try {
      return await weatherFactory!.currentWeatherByCityName(city!);
    } on OpenWeatherAPIException catch (e, s) {
      throw NetworkFailure(e.toString());
    } catch (e) {
      throw NetworkFailure("Error fetching weather for $city");
    }
  }
}
