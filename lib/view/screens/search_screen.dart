import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../blocs/cubits/get_weather_cubit/get_weather_cubit.dart';



class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Search a City'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Center(
          child: TextField(
            onSubmitted: (value){
              BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: value);
               Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 25.h,horizontal: 10.h),
              labelText: 'Search',
              suffixIcon: const Icon(Icons.search),
              border: const OutlineInputBorder(),
              hintText: 'Enter City Name',
            ),
          ),
        ),
      ),
    );
  }
}
