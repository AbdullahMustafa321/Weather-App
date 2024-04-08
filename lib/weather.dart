import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weathe_app/blocs/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weathe_app/blocs/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weathe_app/view/widgets/custom_matrial_app_widget.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, context) {
        return BlocProvider(
          create: (context) => GetWeatherCubit(),
          child: BlocBuilder<GetWeatherCubit, WeatherStates>(
            builder: (context, state) {
              return CustomMatrialAppWidget();
            },
          ),
        );
      },
    );
  }
}

