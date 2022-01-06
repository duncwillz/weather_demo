import 'package:dartz/dartz.dart';
import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/data/network/network_exceptions.dart';
import 'package:weather_app/core/presentation/domain/ui_exceptions.dart';
import 'package:weather_app/core/presentation/domain/usercase_typedefs.dart';
import 'package:weather_app/core/utils/error_helpers.dart';
import 'package:weather_app/feature/search_weather/data/repositories/search_repository.dart';

class SearchByCity implements UseCase<FavouriteWeatherModel, String?> {
  SearchByCity(this._repo);
  final SearchRepository _repo;

  @override
  Future<Either<UIError, FavouriteWeatherModel>> call([params]) async {
    try {
      final res = await _repo.searchByCity(cityName: params!);

      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
