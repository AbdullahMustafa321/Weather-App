import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weathe_app/blocs/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weathe_app/models/weather_model.dart';
import 'package:weathe_app/view/widgets/get_them_color.dart';


class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getThemeColor(weatherModel.weatherStatus),
              getThemeColor(weatherModel.weatherStatus)[300]!,
              getThemeColor(weatherModel.weatherStatus)[50]!,
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.cityName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              ),
              Text('Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}'),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network('http:${weatherModel.image}'),
                  Text(
                    '${weatherModel.temp.round()}',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
                  ),
                  Column(
                    children: [
                      Text('Maxtemp: ${weatherModel.maxTemp.round()}'),
                      Text('Mintemp: ${weatherModel.minTemp.round()}')
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                weatherModel.weatherStatus,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
