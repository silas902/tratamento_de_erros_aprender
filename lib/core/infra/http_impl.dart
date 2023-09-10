// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:logger/logger.dart';


import '../log/app_logger.dart';
import 'i_http.dart';

class HttpImpl implements IHttp {
  final Dio _dio;
  final _logger = AppLogger(printer: PrettyPrinter());

  HttpImpl(this._dio, {Interceptor? interceptor}) {
    if (interceptor != null) {
      _addInterceptor(interceptor);
    }
  }

  @override
  Future<Response> delete(String path, data, {Map<String, dynamic>? queryParameters}) async {
    _logInfos(path, 'DELETE', queryParameters: queryParameters, data: data);
    final response = await _dio.delete(path, data: data, queryParameters: queryParameters);
    _logResponse(path, 'DELETE', response);
    return response;
  }

  @override
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    _logInfos(path, 'GET', queryParameters: queryParameters);
    final response = await _dio.get(path, queryParameters: queryParameters);
    _logResponse(path, 'GET', response);
    return response;
  }

  @override
  Future<Response> patch(String path, data, {Map<String, dynamic>? queryParameters}) async {
    _logInfos(path, 'PATCH', queryParameters: queryParameters, data: data);
    final response = await _dio.patch(path, data: data, queryParameters: queryParameters);
    _logResponse(path, 'PATCH', response);
    return response;
  }

  @override
  Future<Response> post(String path, data, {Map<String, dynamic>? queryParameters}) async {
    _logInfos(path, 'POST', queryParameters: queryParameters, data: data);
    final response = await _dio.post(path, data: data, queryParameters: queryParameters);
    _logResponse(path, 'POST', response);
    return response;
  }

  @override
  Future<Response> put(String path, data, {Map<String, dynamic>? queryParameters}) async {
    _logInfos(path, 'PUT', queryParameters: queryParameters, data: data);
    final response = await _dio.put(path, data: data, queryParameters: queryParameters);
    _logResponse(path, 'PUT', response);
    return response;
  }

  void _addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  void _logInfos(String path, String method, {Map<String, dynamic>? queryParameters, dynamic data}) {
    _logger.d('METHOD: $method \nPATH: ${_dio.options.baseUrl}$path \nQUERYPARAM: $queryParameters \nDATA: $data');
  }

  void _logResponse(String path, String method, Response? response) {
    if (response?.statusCode == 200) {
      _logger.d('[RESPONSE]: ${response?.statusCode} \nMETHOD: $method \nPATH: ${_dio.options.baseUrl}$path \nRESPONSE: ${response?.data}');
    } else {
      _logger.e('[RESPONSE]: ${response?.statusCode} \nMETHOD: $method \nPATH: ${_dio.options.baseUrl}$path \nRESPONSE: ${response?.data}');
    }
  }
}
