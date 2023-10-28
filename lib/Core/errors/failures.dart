import 'package:dio/dio.dart';

abstract class Failure {
  final String errMesssage;

  const Failure(this.errMesssage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMesssage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('There is a bad certificate with the ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromRespomse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('The request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('There was a connection error with the ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure(
          'There was an Unexpected eroor, Please try again later',
        );
    }
  }

  factory ServerFailure.fromRespomse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try again later');
    } else {
      return ServerFailure('Oops, There is an error, Please try again');
    }
  }
}
