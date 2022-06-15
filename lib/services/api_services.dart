import 'package:dio/dio.dart';

class ApiServices {
  static const String url = 'https://reqres.in/api/users?page=2';
  static final Dio dio = Dio();

}
