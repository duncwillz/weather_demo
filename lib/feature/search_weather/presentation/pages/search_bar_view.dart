import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/utils/logger.dart';
import 'package:weather_app/feature/search_weather/presentation/state/search_provider.dart';

class SearchBarView extends StatefulWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  _SearchBarViewState createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {
  TextEditingController searchController = TextEditingController();
  SearchProvider? _searchProvider;

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _searchProvider ??= Provider.of<SearchProvider>(context);

    return Container(
      height: 50,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child: TextField(
                  onChanged: (val) {
                    if (val.isEmpty) _searchProvider!.resetState();
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8)),
                  controller: searchController,
                )),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                if (searchController.text.isEmpty) return;
                _searchProvider!
                    .searchWeather(cityName: searchController.text.trim());
              },
              child: Container(
                color: Colors.blue,
                width: 40,
                height: 30,
                child: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                if (searchController.text.isNotEmpty) {
                  _searchProvider!.resetState();
                  try {
                    searchController.clear();
                  } catch (e) {
                    logger.e(e);
                  }
                }
              },
              child: Container(
                color: Colors.red,
                width: 40,
                height: 30,
                child: const Icon(Icons.clear),
              ),
            )
          ],
        ),
      ),
    );
  }
}
