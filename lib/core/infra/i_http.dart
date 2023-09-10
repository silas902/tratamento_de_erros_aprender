import 'package:dio/dio.dart';

abstract interface class IHttp {
  IHttp._();

  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? queryParameters});
  Future<Response<dynamic>> post(String url, dynamic data, {Map<String, dynamic>? queryParameters});
  Future<Response<dynamic>> put(String url, dynamic data, {Map<String, dynamic>? queryParameters});
  Future<Response<dynamic>> delete(String url, dynamic data, {Map<String, dynamic>? queryParameters});
  Future<Response<dynamic>> patch(String url, dynamic data, {Map<String, dynamic>? queryParameters});
}
