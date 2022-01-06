import 'package:flutter/material.dart';
import 'package:weather_app/core/data/database/db_config.dart';

class WeatherResultTile extends StatelessWidget {
  final FavouriteWeatherModel? favouriteWeather;
  final bool? isFavourite;
  const WeatherResultTile(
      {Key? key, this.favouriteWeather, this.isFavourite = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "${favouriteWeather!.city}, ${favouriteWeather!.country}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Icon(isFavourite! ? Icons.favorite : Icons.favorite_border)
            ],
          ),
          const SizedBox(height: 4),
          Text(
            "${favouriteWeather!.status}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            "Current: ${favouriteWeather!.current!.toStringAsFixed(2)} Celsius",
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
          const SizedBox(height: 4),
          Text(
              "High:${favouriteWeather!.high!.toStringAsFixed(2)} Celsius, ${favouriteWeather!.low!.toStringAsFixed(2)} Celsius",
              style: TextStyle(color: Colors.black.withOpacity(0.6))),
        ],
      ),
    );
  }
}
