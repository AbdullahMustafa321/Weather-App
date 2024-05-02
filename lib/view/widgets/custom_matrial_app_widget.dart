
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/cubits/get_weather_cubit/get_weather_cubit.dart';
import '../screens/weather_screen.dart';
import 'get_them_color.dart';

class CustomMatrialAppWidget extends StatelessWidget {
  const CustomMatrialAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String? weatherStatus = BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherStatus;
    String condition = weatherStatus ?? "Default Condition";
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light()
            .copyWith(primary: getThemeColor(condition)),
      ),
      debugShowCheckedModeBanner: false,
      home: const WeatherScreen(),
    );
  }
}
