import 'package:dio/dio.dart';

import 'init_dio.dart';
import 'home_api.dart';

class API {
  Dio _dio = initDio();

  API() {
    // _dio = initDio();
  }

  /// 首页接口 
  /// api.home.getSlide()
  /// api.home.shopList()
  HomeAPI get home => HomeAPI(_dio);

  /// 用户接口
  /// api.user.login()
  /// api.user.register()
  // UserAPI get user => UserAPI(_dio);
}