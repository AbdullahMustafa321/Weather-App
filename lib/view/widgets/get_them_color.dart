import 'package:flutter/material.dart';

MaterialColor getThemeColor(String condition) {
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.blueGrey;
    case 'Cloudy':
    case 'Overcast':
    case 'Mist':
    case 'Fog':
    case 'Ice pellets':
    case 'Freezing fog':
    case 'Blowing snow':
    case 'Blizzard':
      return Colors.grey;
    case 'Patchy rain possible':
    case 'Thundery outbreaks possible':
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Light rain shower':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Patchy light rain':
    case 'Light sleet showers':
    case 'Light showers of ice pellets':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow showers':
    case 'Patchy moderate snow':
    case 'Patchy rain nearby':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Moderate or heavy snow with thunder':
      return Colors.lightBlue;
    case 'Moderate or heavy rain shower':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy freezing rain':
    case 'Moderate or heavy sleet':
      return Colors.blue;
    case 'Torrential rain shower':
      return Colors.indigo;
    case 'Patchy light rain with thunder':
      return Colors.amber;
    case 'Moderate or heavy rain with thunder':
      return Colors.red;
    default:
      return Colors.grey;
  }
}
