import 'package:dio/dio.dart';

class AppService {
  final Dio dio;
  final baseUrl = "https://www.googleapis.com/books/v1/volumes";
  AppService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl?$endPoint');
    // print(response);
    return response.data;
  }
}
