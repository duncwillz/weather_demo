import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:weather_app/core/di/di_config.dart';
import 'package:weather_app/feature/favourite_weather/presentation/state/favourite_provider.dart';
import 'package:weather_app/feature/search_weather/presentation/state/search_provider.dart';

class ProviderInitializer {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider<SearchProvider>(
        create: (_) => SearchProvider(inject())),
    ChangeNotifierProvider<FavouriteProvider>(
        create: (_) => FavouriteProvider(inject()))
  ];
}
