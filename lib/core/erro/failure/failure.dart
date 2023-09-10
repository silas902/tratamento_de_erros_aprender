import 'package:logger/logger.dart';

import '../../log/app_logger.dart';


abstract interface class Failure {
  final String title;
  final String massage;
  final Object? objectError;
  final StackTrace? stackTrace;
  final _logger = AppLogger(printer: PrettyPrinter());

  Failure({
    required this.title,
    required this.massage,
    this.objectError,
    this.stackTrace,
  }) {
    _logger.e('$runtimeType: $title \n$massage ${objectError != null ? '/nCLASS: $objectError' : ''} \nSTACKTRACE: $stackTrace');
  }
}

class ServiceFailure extends Failure {
  ServiceFailure({
    super.title = 'Error de Servidor ',
    required super.massage,
    required super.stackTrace,
  });
}

class CastFailure extends Failure {
  CastFailure({
    super.title = 'Error de Conversão ',
    super.massage = 'Parece que ouve um Erro de Conversão de Dados',
    super.objectError,
    required super.stackTrace,
  });
}

class NoConnectionFailure extends Failure {
  NoConnectionFailure({
    super.title = 'Error de Conexão ',
    super.massage = 'Parece que ouve um Erro de Conversão de Conexão com a Internet',
    required super.stackTrace,
  });
}

