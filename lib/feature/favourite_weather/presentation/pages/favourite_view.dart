import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/feature/favourite_weather/presentation/state/favourite_provider.dart';
import 'package:weather_app/feature/search_weather/presentation/widgets/weather_result_tile.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  _FavouriteViewState createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  bool get noFavourites =>
      context.watch<FavouriteProvider>().payload.favourites!.isEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
      ),
      body: noFavourites
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Center(child: Text("No Saved Cities")),
              ],
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: context
                      .watch<FavouriteProvider>()
                      .payload
                      .favourites!
                      .map((favourite) => InkWell(
                            onTap: () => context
                                .read<FavouriteProvider>()
                                .unMarkAsFavourite(favourite),
                            child: WeatherResultTile(
                              isFavourite: true,
                              favouriteWeather: favourite,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
    );
  }
}
