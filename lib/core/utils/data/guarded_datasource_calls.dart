import 'package:weather_app/core/data/database/db_exceptions.dart';
import 'package:weather_app/core/data/network/network_exceptions.dart';

import '../error_helpers.dart';
import '../logger.dart';

/// Make an API call that internally handles exceptions. Throws a [NetworkFailure].
///
/// This is intended to always be used for ALL remoteDatasurce calls in the repository layer.
/// This means there'll be no need for API-related try-catch blocks in the repository layer.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
Future<T> guardedApiCall<T>(Function run,
    {String? source, bool showNetworkError = false}) async {
  try {
    final val = await run() as T;
    return val;
  } on ApiResponseException catch (e, s) {
    throw getNetworkFailureFromApiFailure(
      e,
      s,
      errorCode: e.data,
    );
  } on NetworkConnectivityException catch (e, s) {
    logger.e("Exception source >>>>> $source");
    throw NetworkFailure("Check your internet connection and try again");
  } catch (e, s) {
    logger.e("Exception source >>>>> $source");
    logger.e("Exception stack trace >>>>> $s");
    throw NetworkFailure(showNetworkError
        ? e.toString()
        : "Something went wrong, we are looking at it.");
  }
}

/// Make an DB call that internally handles exceptions. Throws a [DBFailure].
///
/// This is intended to always be used for ALL localDatasource calls in the repository layer.
/// This means there'll be no need for DB-related try-catch blocks in the repository layer.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.

Future<T> guardedCacheAccess<T>(Function run, {String? source}) async {
  try {
    final val = await run() as T;
    return val;
  } catch (_, s) {
    logger.e("Exception source >>>>> $source");
    throw getCacheFailureFromDBFailure(
        DBFailure(
            "Sorry, error occurred while retrieving user data, please uninstall your app and reinstall. If this persist, contact support"),
        s);
  }
}
