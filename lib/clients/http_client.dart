import 'package:dio/dio.dart';

class HttpClient {
  final Dio _dio = Dio();

  Future<dynamic> get(String url) async {
    try {
      Response response = await _dio.get(url);
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
