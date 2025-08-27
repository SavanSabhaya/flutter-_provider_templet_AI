import 'package:dio/dio.dart';

import '../client/dio_client.dart';

class ApiService {
  ApiService({required DioClient dioClient}) : _client = dioClient;

  final DioClient _client;

  Future<Response<dynamic>> getExample() async {
    return _client.dio.get('/example');
  }
}
