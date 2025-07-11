import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}


class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError( DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Time out with Api");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Time out with Api");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Time out with Api");
      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate with Api");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request to Api cancel");
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");
      case DioExceptionType.unknown:
        return ServerFailure("Opps There was an error, try later");
      }

  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found, try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, try later');
    } else {
      return ServerFailure('Opps There was an error, try later');
    }
  }
}
