import 'package:dartz/dartz.dart';
import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/data/database/db_exceptions.dart';
import 'package:weather_app/core/presentation/domain/ui_exceptions.dart';
import 'package:weather_app/core/presentation/domain/usercase_typedefs.dart';
import 'package:weather_app/core/utils/error_helpers.dart';
import 'package:weather_app/feature/favourite_weather/data/repositories/favourite_repository.dart';

class UnMarkAsFavourite
    implements UseCase<List<FavouriteWeatherModel>, FavouriteWeatherModel?> {
  UnMarkAsFavourite(this._repo);
  final FavouriteRepository _repo;

  @override
  Future<Either<UIError, List<FavouriteWeatherModel>>> call([params]) async {
    try {
      final res = await _repo.unMarkAsFavourite(params!);

      return Right(res);
    } on DBFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
