import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hotel_booking_sample/model/destination_model/destination_model.dart';
import 'package:hotel_booking_sample/services/api_services.dart';

class HomeScreenController {
  static Future<List<Data>?> getDestination() async {
    try {
      final res = await ApiServices.dio.get(ApiServices.url);
      log(res.data.toString());
      return DestinationModel.fromJson(res.data).data;
    } on DioError catch (e) {
      log(e.error.toString());
      return null;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
