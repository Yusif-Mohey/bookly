import 'package:dio/dio.dart';

class AppService {
  final Dio _dio;
  final baseUrl = "https://www.googleapis.com/books/v1/";
  AppService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(baseUrl);
    // print(response);
    return response.data;
  }
}
