import 'package:bloc/bloc.dart';
import 'package:bloc_and_cubit/data/model/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
}
