import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:rick_and_morty/constants/strings.dart';

class CharactersWevServices{
  late Dio dio;
  CharactersWevServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20)
    );
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharachers() async {
    try {
      Response response = await dio.get('character');
      log(response.data.toString());
      return response.data;
    } catch(e) {
      log(e.toString());
      return [];
    }
  }
}