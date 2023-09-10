


import '../infra/http_impl.dart';
import '../infra/i_http.dart';
import '../interceptors/defult_interceptor.dart';

abstract interface class IGateway implements IHttp {
  final Dio dio;

  IGateway({required this.dio});
}

class Gateway extends HttpImpl implements IGateway {
  @override
  final Dio dio;

  Gateway({required this.dio}) : super(dio, interceptor: DefultInterceptor());
}
