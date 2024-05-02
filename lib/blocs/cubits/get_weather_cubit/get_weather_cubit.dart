
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathe_app/blocs/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weathe_app/models/weather_model.dart';
import 'package:weathe_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherStates>{
  GetWeatherCubit(): super(WeatherInitialState());
   WeatherModel? weatherModel;
  getWeather({required String cityName})async{
    emit(WeatherLoadingState());
    try {
       weatherModel = await WeatherService(Dio()).getWeather(cityName: cityName);
      emit(WeatherSuccessState(weatherModel!));
    }catch (e) {
      emit(WeatherFaliureState(e.toString()));
    }

  }
}