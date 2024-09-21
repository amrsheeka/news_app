import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static late Dio dio;
  static void init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
  }) async
  {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
  static Future<Response> postData({
    required String url,
    required  data,
  }) async
  {
    return await dio.post(
      url,
      data: data,
    );
  }
}