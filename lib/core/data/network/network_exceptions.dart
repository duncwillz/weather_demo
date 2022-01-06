import 'package:weather_app/core/data/database/db_exceptions.dart';

/// Thrown on unhandled API exceptions
class ApiResponseException implements Exception {
  String? exceptionMessage;
  dynamic data;

  ApiResponseException({this.exceptionMessage, this.data});

  @override
  String toString() => '{exceptionMessage: $exceptionMessage, data: $data}';
}

class NetworkFailure extends Failure {
  NetworkFailure(String message) : super(message);
}

class NetworkConnectivityException implements Exception {
  String? exceptionMessage = "No internet connectivity";
  NetworkConnectivityException({this.exceptionMessage});

  @override
  String toString() => '{exception: $exceptionMessage}';
}
