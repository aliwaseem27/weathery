import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/api/api_consumer.dart';
import 'package:weathery/api/api_interceptors.dart';
import 'package:weathery/api/endpoints.dart';
import 'package:weathery/api/status_code.dart';
import 'package:weathery/injection.dart';

@Injectable(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  final Dio client = Dio();

  DioConsumer() {
    client.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
      final HttpClient httpClient =
      HttpClient(context: SecurityContext(withTrustedRoots: false));
      httpClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return httpClient;
    });

    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internalServerError;
      };

    client.interceptors.add(getIt<ApiInterceptors>());
    client.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ));
  }

  @override
  Future get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.get(path, queryParameters: queryParameters);
      return _handleResponseAsJson(response);
    } on DioException catch (e) {
      _handleDioException(e);
    }
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? body,
        bool formDataIsEnabled = false,
        Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.post(path, queryParameters: queryParameters,
          data: formDataIsEnabled ? FormData.fromMap(body!) : body);
      return _handleResponseAsJson(response);
    } on DioException catch (e){
      _handleDioException(e);
    }
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? body,
        Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
      await client.put(path, data: body, queryParameters: queryParameters);
      return _handleResponseAsJson(response);
    } on DioException catch (e) {
      _handleDioException(e);
    }
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    final responseJson = jsonDecode(response.data.toString());
    return responseJson;
  }

  dynamic _handleDioException(DioException e) {
    // switch (e.type) {
    //   case DioExceptionType.connectionTimeout:
    //   case DioExceptionType.sendTimeout:
    //   case DioExceptionType.receiveTimeout:
    //     throw const FetchDataException();
    //   case DioExceptionType.badCertificate:
    //     break;
    //   case DioExceptionType.badResponse:
    //     switch (e.response?.statusCode) {
    //       case StatusCode.badRequest:
    //         throw const BadRequestException();
    //       case StatusCode.forbidden:
    //       case StatusCode.unauthorized:
    //         throw const UnauthorizedException();
    //       case StatusCode.notFound:
    //         throw const NotFoundException();
    //       case StatusCode.conflict:
    //         throw const ConflictException();
    //       case StatusCode.internalServerError:
    //         throw const InternalServerErrorException();
    //     }
    //     break;
    //   case DioExceptionType.cancel:
    //     break;
    //   case DioExceptionType.connectionError:
    //     throw NoInternetConnectionException();
    //   case DioExceptionType.unknown:
    //     break;
    // }
  }
}
