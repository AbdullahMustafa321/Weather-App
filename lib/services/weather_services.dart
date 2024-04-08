import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weathe_app/constants/strings.dart';

import '../models/weather_model.dart';

class WeatherService{
  final Dio dio;

  WeatherService(this.dio);
  Future<WeatherModel> getWeather({required String cityName})async{
    try {
      Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    }
    on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message']??'Oops there was an error, please try again later';
      throw Exception(errorMessage);
    }
    catch (e) {
      log(e.toString());
      throw Exception('Oops there was an error, please try again later');
    }
  }
}