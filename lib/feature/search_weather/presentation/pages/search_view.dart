import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/feature/favourite_weather/presentation/pages/favourite_view.dart';
import 'package:weather_app/feature/favourite_weather/presentation/state/favourite_provider.dart';
import 'package:weather_app/feature/search_weather/presentation/pages/search_bar_view.dart';
import 'package:weather_app/feature/search_weather/presentation/state/search_provider.dart';
import 'package:weather_app/feature/search_weather/presentation/widgets/weather_result_tile.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  SearchProvider? _searchProvider;
  FavouriteProvider? _favouriteProvider;

  @override
  void initState() {
    Future.microtask(() => context.read<FavouriteProvider>().getAllFavourite());
    super.initState();
  }

  bool get isFavourite => _favouriteProvider!.payload.favourites!
      .contains(_searchProvider!.payload.weather);

  _initializers() {
    _searchProvider ??= Provider.of<SearchProvider>(context);
    _favouriteProvider ??= Provider.of<FavouriteProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    _initializers();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const SearchBarView()),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              _searchProvider!.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _searchProvider!.payload.weather == null
                      ? Center(
                          child: GestureDetector(
                            onTap: () => Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const FavouriteView(),
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .6,
                              height: 45,
                              color: Colors.blue,
                              child: const Center(
                                  child: Text(
                                "View Favourites",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      : InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () => _favouriteProvider!.toggleFavourite(
                              _searchProvider!.payload.weather!, isFavourite),
                          child: WeatherResultTile(
                            isFavourite: isFavourite,
                            favouriteWeather: _searchProvider!.payload.weather,
                          ),
                        ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
