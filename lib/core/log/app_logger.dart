
import 'package:logger/logger.dart';

import 'log.dart';


class AppLogger extends Logger{
  AppLogger({LogPrinter? printer}) : super(printer: printer);

  @override
  void d(mensagen, [error, stackTrace]) {
    final log = Log.d(mensagen: mensagen);
    logs.add(log);
    super.d(mensagen, error, stackTrace);
  }

  @override
  void e(message, [error, stackTrace]) {
    final log = Log.e(mensagen: message);
    logs.add(log);
    super.e(message, error, stackTrace);
  }
  @override
  void i(message, [error, stackTrace]) {
    final log = Log.i(mensagen: message);
    logs.add(log);
    super.i(message, error, stackTrace);
  }
  @override
  void v(message, [error, stackTrace]) {
    final log = Log.v(mensagen: message);
    logs.add(log);
    super.v(message, error, stackTrace);
  }
  @override
  void w(message, [error, stackTrace]) {
    final log = Log.w(mensagen: message);
    logs.add(log);
    super.w(message, error, stackTrace);
  }
  @override
  void wtf(message, [error, stackTrace]) {
    final log = Log.wtf(mensagen: message);
    logs.add(log);
    super.wtf(message, error, stackTrace);
  }
}
List<Log> logs = [];