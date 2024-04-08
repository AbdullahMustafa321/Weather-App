import 'package:weathe_app/models/weather_model.dart';

class WeatherStates{}
class WeatherInitialState extends WeatherStates{}
class WeatherLoadedState extends WeatherStates{
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}
class WeatherFaliureState extends WeatherStates{
  final String errorMessage;

  WeatherFaliureState(this.errorMessage);
}