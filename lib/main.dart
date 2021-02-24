import 'package:bloc_and_cubit/data/weather_repository.dart';
import 'package:bloc_and_cubit/screens/weather_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/weather_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        //create: (context) => WeatherCubit(FakeWeatherRepository()),
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchScreen(),
      ),
    );
  }
}
