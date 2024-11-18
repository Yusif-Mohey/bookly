import 'package:dio/dio.dart';

abstract class Faliure {
  final String message;

  Faliure(this.message);
}

class ServerFaliure extends Faliure {
  ServerFaliure(super.message);
  factory ServerFaliure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send timeout with Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFaliure('receive timeout with Api Server');

      case DioExceptionType.badCertificate:
        return ServerFaliure('Bad Certificate with Api Server');

      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFaliure('Request to Api Server was canceled');

      case DioExceptionType.connectionError:
        return ServerFaliure('Not Internet Connection');

      case DioExceptionType.unknown:
        return ServerFaliure(
            'Oops there was an error,Please try agin later !!');
    }
  }
  factory ServerFaliure.fromResponse(int statusCode, dynamic responose) {
    if (statusCode == 404) {
      return ServerFaliure('Your request wos not found, please try later');
    } else if (statusCode == 500) {
      return ServerFaliure('There was a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(
          responose['error']['mesage']); //the changer one for each Api
    } else {
      return ServerFaliure('There was an error ,please try agin');
    }
  }
}
