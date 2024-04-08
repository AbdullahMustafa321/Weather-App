import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathe_app/blocs/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weathe_app/blocs/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weathe_app/view/screens/search_screen.dart';
import 'package:weathe_app/view/widgets/no_weather_widget.dart';

import '../widgets/weather_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Theme.of(context).primaryColor,
        title: const Text("Weather App"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context,state){
          if(state is WeatherInitialState){
            return const NoWeatherWidget();
          }
          else if(state is WeatherLoadedState){
            return  WeatherWidget();
            }
          else{
            return const Text('Oops! There was an error loading the weather');
          }
        },
      ),
    );
  }
}
