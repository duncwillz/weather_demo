import 'package:weather_app/core/data/database/db_exceptions.dart';
import 'package:weather_app/core/data/network/network_exceptions.dart';
import 'package:weather_app/core/presentation/domain/ui_exceptions.dart';

/// Return a `UIError` with a human readable [message].
///
/// This is intended to be used in the Usecase `NetwokFailure` and `CacheFailure`
/// handlera, and [message] should be a human readable error messages,
/// so that the bloc layer that makes use of usecases can just propagate these errors
/// to the UI without needing to do any extra processing.
// ignore: prefer_expression_function_bodies
UIError getUIErrorFromUsecaseFailure(
    String message, dynamic exception, StackTrace stackTrace) {
  // Send the Exception and Stacktrace to Sentry in Production mode.
  return UIError(message);
}

/// Return a `CacheFailure` with a generic connection error message for
/// unhandled errors from Api requests or otherwise unknown errors.
/// Also prints the associated [exception], for debugging purposes.
///
/// This is intended to be used in the repository layer's `DBFailure` catch block,
/// for all errors originating from the RemotLocalDatasource, so that the error may
/// be also logged.
// ignore: prefer_expression_function_bodies
CacheFailure getCacheFailureFromDBFailure(
    DBFailure exception, StackTrace stackTrace) {
  return CacheFailure(exception.message);
}

/// Return a `NetworkFailure` with a generic connection error message for
/// unhandled errors from Api requests or otherwise unknown errors.
/// Also prints the associated [exception], for debugging purposes.
///
/// This is intended to be used in the repository layer's `ApiFailure` catch block,
/// for all known and unknown errors originating from the RemoteDatasource, so that
/// the error may be also logged.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
///
NetworkFailure getNetworkFailureFromApiFailure(
  ApiResponseException? exception,
  StackTrace stackTrace, {
  dynamic errorCode,
}) {
  String exceptionMessage = exception!.exceptionMessage!;
  if (exceptionMessage != null) {
    // Report exception to external error reporting provider for visibility
  }

  return NetworkFailure(exceptionMessage);
}
