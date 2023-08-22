import 'package:movies_app/core/networks/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}

class LocalDataBaseException implements Exception {
  final String errorMessage;

  const LocalDataBaseException({required this.errorMessage});
}
