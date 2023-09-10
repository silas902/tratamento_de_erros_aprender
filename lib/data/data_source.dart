// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../core/erro/exception.dart';
import '../core/gateway/gateway.dart';
import '../domain/test.dart';


abstract interface class IDataSource {
  Future<List<Test>> get();
}

class DataSourceImpl implements IDataSource {
  final IGateway gateway;
  DataSourceImpl({
    required this.gateway,
  });
  @override
  Future<List<Test>> get() async {
    try {
    
     final response = await gateway.get('/rest/v1/test?select=*'); 
     List<Test> tests = response.data.map<Test>(( e ) => Test.fromJson(e)).toList();
     return tests;
    }on DioException catch (e) {
      if(e.response?.statusCode != null){
        throw ServerException(statusCode: e.response?.statusCode);
      } else {
        throw NoConnectionException();
      }
    } on TypeError {
      throw DataPersistenceException();

    } catch (e) {
      if(e is ServerException || e is DataPersistenceException){
        rethrow;
      } else {
        throw NoConnectionException();
      }
    }
  }
  
}
