// HomeAPI.dart
import 'package:dio/dio.dart';

class HomeAPI {
  final Dio _dio;

  HomeAPI(this._dio);

  /// 轮播图列表
  Future<dynamic> getSlide() async {
    Response res = await _dio.get('/home/slide');
    
    return res.data;
  }
}