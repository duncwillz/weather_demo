import 'package:weather_app/feature/favourite_weather/domain/usecases/get_all_favourites.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/mark_as_favourite.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/unmark_as_favourite.dart';

class FavouriteUseCases {
  MarkAsFavourite markAsFavourite;
  UnMarkAsFavourite unMarkAsFavourite;
  GetAllFavourites getAllFavourites;
  FavouriteUseCases(
    this.markAsFavourite,
    this.unMarkAsFavourite,
    this.getAllFavourites,
  );
}
