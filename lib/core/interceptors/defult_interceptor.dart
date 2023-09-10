
import 'package:dio/dio.dart';

class DefultInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler){
    options.headers.addAll({ 
    'apiKey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJqYmpyZHdvamNmdXB2aWFzbmxtIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE3MDczMDUsImV4cCI6MjAwNzI4MzMwNX0.MWP-qZoxq_GyKYVuycFitN_WICiI6Ps8A1pulMr5nu4',
    'Authorization' : 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJqYmpyZHdvamNmdXB2aWFzbmxtIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE3MDczMDUsImV4cCI6MjAwNzI4MzMwNX0.MWP-qZoxq_GyKYVuycFitN_WICiI6Ps8A1pulMr5nu4',
    });
    super.onRequest(options, handler);   
    
  }
}