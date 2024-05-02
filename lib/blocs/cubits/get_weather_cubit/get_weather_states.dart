import 'package:weathe_app/models/weather_model.dart';

abstract class WeatherStates{}
class WeatherInitialState extends WeatherStates{}
class WeatherLoadingState extends WeatherStates{}
class WeatherSuccessState extends WeatherStates{
  final WeatherModel weatherModel;
  WeatherSuccessState(this.weatherModel);
}
class WeatherFaliureState extends WeatherStates{
  final String errorMessage;

  WeatherFaliureState(this.errorMessage);
}